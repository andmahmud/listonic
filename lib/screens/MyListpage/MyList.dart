import 'package:flutter/material.dart';

class Mylist extends StatefulWidget {
  const Mylist({super.key});

  @override
  _MylistState createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  final List<Map<String, String>> _cards = []; // List to store card data
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _renameController = TextEditingController();

  void _showAppBarMenu(int value) {
    // Handle app bar menu actions here
    if (value == 1) {
      // Show trash or other actions
      print('Trash clicked');
    }
  }

  // Add a new card to the list
  void _addNewCard(String title) {
    setState(() {
      _cards.add({'title': title}); // Add a new card with title
    });
  }

  // Remove card by index
  void _removeCard(int index) {
    setState(() {
      _cards.removeAt(index); // Remove card by index
    });
  }

  // Rename card title
  void _renameCard(int index, String newTitle) {
    setState(() {
      _cards[index]['title'] = newTitle; // Rename card title
    });
  }

  // Build the card widget for display
  Widget _buildCard(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Stack(
        children: [
          SizedBox(
            height: 90,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              title: Text(
                _cards[index]['title'] ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              subtitle: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Expanded(
                        child: LinearProgressIndicator(
                          value: 0.0,
                          color: Colors.green,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "0/5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 4, // Position the icon on the right side
            top: 4, // Position the icon at the top
            child: PopupMenuButton<int>(
              icon: const Icon(Icons.more_vert),
              onSelected: (value) {
                // Handle card menu actions here
                if (value == 1) {
                  // Manage List action
                  _showManageListDialog(index);
                } else if (value == 2) {
                  // Rename action
                  _showRenameDialog(index);
                } else if (value == 3) {
                  // Share action
                  _showShareDialog(index);
                } else if (value == 5) {
                  // Trash action (remove card)
                  _removeCard(index); // Remove card when Trash is selected
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.list, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("Manage List"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("Rename"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("Share"),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        "Trash",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Show dialog for renaming a card
  void _showRenameDialog(int index) {
    _renameController.text = _cards[index]['title'] ?? '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rename List'),
          content: TextField(
            controller: _renameController,
            decoration: const InputDecoration(hintText: 'Enter new title'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final newTitle = _renameController.text.trim();
                if (newTitle.isNotEmpty) {
                  _renameCard(index, newTitle);
                }
                Navigator.pop(context);
              },
              child: const Text('Rename'),
            ),
          ],
        );
      },
    );
  }

  // Show dialog for sharing a card
  void _showShareDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Share List'),
          content: Text('Share the list: ${_cards[index]['title']}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Show dialog to manage list (customize as per your needs)
  void _showManageListDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Manage List'),
          content: Text('Manage list: ${_cards[index]['title']}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Show modal bottom sheet to add new card
  void _showAddCardDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "New List",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: "Enter list title",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final title = _titleController.text.trim();
                      if (title.isNotEmpty) {
                        _addNewCard(title);
                      }
                      _titleController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text("Add"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.more_vert),
            onSelected: _showAppBarMenu,
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.grey),
                    SizedBox(width: 10),
                    Text("Trash"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _cards.length,
          itemBuilder: (context, index) {
            return _buildCard(index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddCardDialog,
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
    );
  }
}
