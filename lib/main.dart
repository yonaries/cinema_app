//* Package Imports
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//* File Imports
import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navbar(),
    );
  }
}

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

int currentBar = 0;

final List<Widget> screens = <Widget>[
  const homePage(),
  const Center(
    child: Text(
      "Cinemas",
      style: TextStyle(fontSize: 20),
    ),
  ),
  const Center(
    child: Text(
      "Profile",
      style: TextStyle(fontSize: 20),
    ),
  )
];

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(currentBar),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        child: GNav(
          padding: const EdgeInsets.all(15),
          gap: 8,
          tabBackgroundColor: Colors.black,
          activeColor: Colors.white,
          onTabChange: (index) {
            setState(() {
              currentBar = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.add,
              text: "Movies",
            ),
            GButton(
              icon: Icons.theaters,
              text: "Cinemas",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
