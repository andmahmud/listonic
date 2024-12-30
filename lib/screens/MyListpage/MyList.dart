import 'package:flutter/material.dart';

class Mylist extends StatefulWidget {
  const Mylist({super.key});

  @override
  _MylistState createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  final List<Widget> _cards = []; // List to store the cards
  final TextEditingController _titleController = TextEditingController();

  void _addNewCard(String title) {
    setState(() {
      _cards.add(_buildCard(title));
    });
  }

  Widget _buildCard(String title) {
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
                title,
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
                } else if (value == 2) {
                  // Rename action
                } else if (value == 3) {
                  // Share action
                } else if (value == 4) {
                  // Copy action
                } else if (value == 5) {
                  // Trash action
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
                  value: 4,
                  child: Row(
                    children: [
                      Icon(Icons.copy, color: Colors.grey),
                      SizedBox(width: 10),
                      Text("Copy"),
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
              Wrap(
                spacing: 8,
                children: [
                  _buildSuggestionChip("Walmart"),
                  _buildSuggestionChip("Target"),
                  _buildSuggestionChip("Dollar General"),
                  _buildSuggestionChip("Shopping"),
                  _buildSuggestionChip("Groceries"),
                  _buildSuggestionChip("12/30/24"),
                ],
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

  Widget _buildSuggestionChip(String label) {
    return ChoiceChip(
      label: Text(label),
      selected: false,
      onSelected: (selected) {
        _titleController.text = label;
      },
    );
  }

  void _showAppBarMenu(int value) {
    // Handle AppBar menu actions
    if (value == 1) {
      // Trash action
    }
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
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _cards.length,
                itemBuilder: (context, index) {
                  return _cards[index];
                },
              ),
            ),
          ],
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
