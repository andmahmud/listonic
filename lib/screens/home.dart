import 'package:flutter/material.dart';
import 'package:listonic/screens/AllProductsPage%20.dart';
import 'package:listonic/screens/Done_work.dart';
import 'package:listonic/screens/drawar.dart'; // Custom drawer
import 'package:listonic/screens/my_list.dart'; // Task list screen

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Tracks the current selected index

  // List of pages to display for each BottomNavigationBar item
  final List<Widget> _pages = [
    MyList(), // Using the MyList widget for the Home page
    DoneWorkList(),

    AllProductsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawar(), // Custom drawer
      appBar: AppBar(
        title: Text(
          _currentIndex == 0
              ? "My List"
              : _currentIndex == 1
                  ? "Search"
                  : "Profile", // Fixed ternary operator syntax
        ),
        backgroundColor:
            Colors.transparent, // Transparent background to remove extra UI
        elevation: 0, // No shadow for the AppBar
      ),

      body: _pages[_currentIndex], // Display page based on selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Highlight the current index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the index when an item is tapped
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done_all),
            label: "Done Work",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: "All Products",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
