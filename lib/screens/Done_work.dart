import 'package:flutter/material.dart';

class DoneWorkList extends StatelessWidget {
  const DoneWorkList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Done Work"),
        backgroundColor: Colors.teal,
      ),
      body: DoneWorkListView(),
    );
  }
}

class DoneWorkListView extends StatelessWidget {
  // Sample list of completed tasks
  final List<String> doneTasks = [
    "Complete Flutter Project",
    "Write Documentation",
    "Attend Team Meeting",
  ];

  DoneWorkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doneTasks.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListTile(
            title: Text(doneTasks[index]),
            trailing: Icon(Icons.check, color: Colors.green),
          ),
        );
      },
    );
  }
}
