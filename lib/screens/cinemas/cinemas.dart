import 'package:flutter/material.dart';

class Cinemas extends StatefulWidget {
  const Cinemas({Key? key}) : super(key: key);

  @override
  State<Cinemas> createState() => _CinemasState();
}

Widget buildCinema(currentWidth, currentHeight, cinemaName, cinemaLocation) {
  return Container(
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.only(bottom: 10),
    width: currentWidth,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 5,
          offset: const Offset(-1, 4),
        ),
      ],
    ),
    child: Row(
      children: [
        Container(
          width: 100,
          height: currentHeight,
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 200,
              child: Text(
                cinemaName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Text(
                cinemaLocation,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              width: 200,
              child: Text(
                "Scessions",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.redAccent),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

class _CinemasState extends State<Cinemas> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black26,
        title: const Text(
          "Cinemas",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0),
        ),
        foregroundColor: Colors.red,
        // centerTitle: true,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              buildCinema(
                currentWidth,
                currentHeight,
                "Biresh Cineplus",
                "Piassa, Eliana Grand Mall",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Gast Cinema",
                "CMC, St.Michel",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Century Cinema",
                "Gurdsholla, Century Mall",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Edna Cinema",
                "Bole, Edna Mall",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Abissinia Cineplex",
                "Bole, Sheger Bldg",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Vamdas Cinema",
                "Megenagna, Lem Hotel",
              ),
              buildCinema(
                currentWidth,
                currentHeight,
                "Alem Cinema",
                "Bole, Alem Building",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
