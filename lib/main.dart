import 'package:flutter/material.dart';
import 'package:listonic/screens/MyListpage/home.dart';

void main() {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
