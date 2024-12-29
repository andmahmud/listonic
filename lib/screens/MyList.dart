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
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Stack(
                children: [
                  SizedBox(
                    height: 90, // Set the height of the card here
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8), // Padding for better layout
                      title: const Text(
                        "New list",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18, // Larger font size for a bolder title
                          color: Colors.black, // Title color
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: const LinearProgressIndicator(
                                  value: 0.0,
                                  color: Colors.green,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      4), // Spacing between progress and text
                              Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: const Text(
                                  "0/5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        14, // Adjusted font size for better fit
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: const SizedBox
                          .shrink(), // Remove the default trailing text
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 2,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {
                            showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(
                                0, // Left position (starts from the left of the screen)
                                MediaQuery.of(context).size.height -
                                    200, // Bottom position (adjust this value)
                                0, // Right position (ends at the right of the screen)
                                0, // Top position (set to 0 to push the menu upwards)
                              ),
                              items: [
                                const PopupMenuItem(
                                  value: 2,
                                  child: Row(
                                    children: [
                                      // Icon(
                                      //   Icons.delete, // Trash icon
                                      //   color: Colors.grey,
                                      // ),
                                      // SizedBox(
                                      //     width:
                                      //         10), // Space between icon and text
                                      Text("Manage List"),
                                      SizedBox(width: 100),
                                      Icon(
                                        Icons.close, // Trash icon
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Rename"),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person_add, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Share"),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.copy, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Copy"),
                                      SizedBox(
                                          width:
                                              100), // Space between icon and text
                                      Icon(
                                        Icons.arrow_drop_down, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete, // Trash icon
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Trash"),
                                    ],
                                  ),
                                ),

                                // Additional items can go here
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Stack(
                children: [
                  SizedBox(
                    height: 90, // Set the height of the card here
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8), // Padding for better layout
                      title: const Text(
                        "New list",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18, // Larger font size for a bolder title
                          color: Colors.black, // Title color
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: const LinearProgressIndicator(
                                  value: 0.0,
                                  color: Colors.green,
                                  backgroundColor: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                  width:
                                      4), // Spacing between progress and text
                              Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: const Text(
                                  "0/5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        14, // Adjusted font size for better fit
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: const SizedBox
                          .shrink(), // Remove the default trailing text
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 2,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {
                            showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(
                                0, // Left position (starts from the left of the screen)
                                MediaQuery.of(context).size.height -
                                    200, // Bottom position (adjust this value)
                                0, // Right position (ends at the right of the screen)
                                0, // Top position (set to 0 to push the menu upwards)
                              ),
                              items: [
                                const PopupMenuItem(
                                  value: 2,
                                  child: Row(
                                    children: [
                                      Text(
                                        "Manage List",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              10, // Larger font size for a bolder title
                                          color: Colors.black, // Title color
                                        ),
                                      ),
                                      Spacer(), // This will take the remaining space and push the Icon to the right
                                      Icon(
                                        Icons.close, // Close icon
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Rename"),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.person_add, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Share"),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.copy, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Copy"),
                                      SizedBox(
                                          width:
                                              100), // Space between icon and text
                                      Icon(
                                        Icons.arrow_drop_down, // Trash icon
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 1,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete, // Trash icon
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                          width:
                                              10), // Space between icon and text
                                      Text("Trash"),
                                    ],
                                  ),
                                ),

                                // Additional items can go here
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            const Spacer(),

            // Floating Action Button
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {
                  // Add new list functionality
                },
                backgroundColor: Colors.green,
                label: const Text(
                  "NEW LIST",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
