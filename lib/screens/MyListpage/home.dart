import 'package:flutter/material.dart';

import 'package:listonic/screens/Food_facts_page/Food%20_Facts.dart';
import 'package:listonic/screens/MyListpage/MyList.dart';
import 'package:listonic/screens/Profilepage/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Mylist(),
    FoodFacts(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Page content
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: "Food Facts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
