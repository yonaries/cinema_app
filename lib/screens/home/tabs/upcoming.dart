import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../config/services.dart';
import '../../../models/comingsoon.dart';

class Upcoming extends StatefulWidget {
  const Upcoming({Key? key, currentWidth}) : super(key: key);

  @override
  State<Upcoming> createState() => _UpcomingState();
}

//* Building movie blocks
const double movieHeight = 400;
Widget movieBlock(
    currentWidth, currentHeight, moviePoster, releseDate, movieTitle) {
  return Container(
    margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
    width: currentWidth * 0.42,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: currentWidth,
          height: currentHeight * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(-1, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: Colors.grey.shade200,
              child: Ink.image(
                image: NetworkImage(moviePoster),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () {},
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Text(
                releseDate,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                movieTitle,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

class _UpcomingState extends State<Upcoming> {
  final List<Item> _postsList = <Item>[];
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final posts = await getUpcomings();
    setState(() {
      _postsList.addAll(posts);
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(currentWidth * 0.05),
        width: currentWidth,
        height: currentHeight,
        alignment: Alignment.center,
        child: isLoaded
            ? MasonryGridView.builder(
                itemCount: _postsList.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final movie = _postsList[index];
                  return movieBlock(
                    currentWidth,
                    currentHeight,
                    movie.image,
                    movie.title,
                    movie.releaseState,
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
      ),
    );
  }
}
