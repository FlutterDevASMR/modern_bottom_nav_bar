import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: Colors.black,
          child: GNav(
            tabs: [
              GButton(icon: Icons.home_outlined, text: 'Home'),
              GButton(icon: Icons.favorite_outline, text: 'Likes'),
              GButton(icon: Icons.search_outlined, text: 'Search'),
              GButton(icon: Icons.person_outline, text: 'Profile'),
            ],
            color: Colors.white,
            activeColor: Colors.white,
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade900,
            gap: 8,
          ),
        ),
      ),
    );
  }
}
