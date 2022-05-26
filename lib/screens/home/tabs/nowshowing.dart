//* Package imports
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//* File Imports
import '../../../config/firebase.dart';
import '../../../config/movieclass.dart';
import '../../../models/onshowModel.dart';

class NowShowing extends StatefulWidget {
  const NowShowing({Key? key, currentWith}) : super(key: key);
  @override
  State<NowShowing> createState() => _NowShowingState();
}

//const double movieHeight = 400;
//* Movie Blocks wigdet
Widget movieBlock(currentWidth, movieHeight, movieRate, movieTitle, movieGenre,
    movieDuration, moviePoster) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: currentWidth * 0.42,
    decoration: BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: currentWidth,
          height: movieHeight * 0.35,
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
                image: AssetImage(moviePoster),
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
        SizedBox(
          child: Column(
            children: [
              Text(movieRate),
              Text(
                movieTitle,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(movieGenre,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                  const Text("|"),
                  Text(movieDuration,
                      style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

final List<Movie> _nowshowingMovies = [
  Movie(
    name: "Doctor Strange: In Multiverse of Madness",
    rate: "*****",
    genre: "Sci-fi,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/doctor.jpg",
  ),
  Movie(
    name: "SpiderMan: Noway home",
    rate: "*****",
    genre: "Sci-fi,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/spiderman.jpg",
  ),
  Movie(
    name: "Uncharted",
    rate: "*****",
    genre: "Adventure,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/uncharted.jpg",
  ),
  Movie(
    name: "The Lost City",
    rate: "*****",
    genre: "Adventure",
    time: "2h 58m",
    poster: "lib/assets/posters/lostcity.jpg",
  ),
  Movie(
    name: "Sonic The Hemsberg: 2",
    rate: "*****",
    genre: "Sci-fi,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/sonic.png",
  ),
  Movie(
    name: "Morbius",
    rate: "*****",
    genre: "Sci-fi,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/morbius.jpg",
  ),
  Movie(
    name: "The BatMan",
    rate: "*****",
    genre: "Sci-fi,Action",
    time: "2h 58m",
    poster: "lib/assets/posters/thebatman.jpg",
  ),
];

class _NowShowingState extends State<NowShowing> {
  final List<OnShow> _onShow = <OnShow>[];
  @override
  void initState() {
    super.initState();
    fetchID();
  }

  void fetchID() async {
    final ids = await getOnShowID();
    print(getOnShowID());
    _onShow.addAll(ids);
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    // final _movies = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(currentWidth * 0.05),
        width: currentWidth,
        height: currentHeight,
        alignment: Alignment.center,
        child: MasonryGridView.builder(
          itemCount: _nowshowingMovies.length,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return movieBlock(
              currentWidth,
              currentHeight,
              _nowshowingMovies[index].rate,
              _nowshowingMovies[index].name,
              _nowshowingMovies[index].genre,
              _nowshowingMovies[index].time,
              _nowshowingMovies[index].poster,
            );
          },
        ),
      ),
    );
  }
}
