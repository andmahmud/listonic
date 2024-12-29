import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  const Mylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My List"),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert), // Three-dot menu icon
            onPressed: () {
              // Action for the menu icon
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(100, 80, 0, 0),
                items: [
                  const PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete, // Trash icon
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10), // Space between icon and text
                        Text("Trash"),
                      ],
                    ),
                  ),
                  // const PopupMenuItem(
                  //   value: 2,
                  //   child: Text("Option 2"),
                  // ),
                ],
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card List 1
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: ListTile(
                title: const Text(
                  "nznnz",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const LinearProgressIndicator(
                  value: 0.0,
                  color: Colors.grey,
                  backgroundColor: Colors.grey,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "0/0",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_vert),
                      onPressed: () {
                        // Handle the "more" button press
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Card List 2
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: ListTile(
                title: const Text(
                  "New list",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const LinearProgressIndicator(
                  value: 0.0,
                  color: Colors.grey,
                  backgroundColor: Colors.grey,
                ),
                trailing: const Text(
                  "0/5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const Spacer(),

            // Floating Action Button
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Add new list functionality
                },
                backgroundColor: Colors.blue,
                label: const Text(
                  "NEW LIST",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
