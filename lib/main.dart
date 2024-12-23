import 'package:listonic/drawar.dart';
import 'package:flutter/material.dart';

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
        drawer: drawar(),
        appBar: AppBar(
          title: Text(
            "My Lists",
          ),
          backgroundColor: Colors.black,
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: Center(
          child: Text("Main page"),
        ),
      ),
    );
  }
}
