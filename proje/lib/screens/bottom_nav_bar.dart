import 'package:flutter/material.dart';
import 'package:proje/screens/PlanetTemputure.dart';
import 'package:proje/screens/home_page.dart';
import 'package:proje/screens/profile_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List page = [
    MyHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            page[_currentIndex],
            Positioned(
              top: MediaQuery.of(context).size.height *0.85,
              left: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 60,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 50,
                      child: GNav(
                          onTabChange: (index) {
                            setState(() => _currentIndex = index);
                          },
                          hoverColor: Colors.orangeAccent,
                          tabBorderRadius: 20,
                          tabBorder: Border.all(
                              color: Colors.black54,
                              width: 2),
                          gap: 10,
                          color: Colors.black,
                          activeColor:
                          Colors.black,
                          iconSize: 32,
                          padding: EdgeInsets.symmetric( horizontal: 20, vertical: 5),
                          tabs: [
                            GButton(
                              icon: Icons.home_rounded,
                              text: 'Home',
                            ),
                            GButton(
                              icon: Icons.person_outline,
                              text: 'Log in',
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}