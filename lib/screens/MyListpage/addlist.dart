// import 'package:flutter/material.dart';

// class addList extends StatelessWidget {
//   const addList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController _titleController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("New List"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "New List",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextField(
//               controller: _titleController,
//               decoration: const InputDecoration(
//                 labelText: "Enter list title",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Wrap(
//               spacing: 8,
//               children: [
//                 _buildSuggestionChip("Walmart", _titleController),
//                 _buildSuggestionChip("Target", _titleController),
//                 _buildSuggestionChip("Dollar General", _titleController),
//                 _buildSuggestionChip("Shopping", _titleController),
//                 _buildSuggestionChip("Groceries", _titleController),
//                 _buildSuggestionChip("12/30/24", _titleController),
//               ],
//             ),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text("Cancel"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     final title = _titleController.text.trim();
//                     if (title.isNotEmpty) {
//                       Navigator.pop(context, title);
//                     }
//                   },
//                   child: const Text("Add"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSuggestionChip(String label, TextEditingController controller) {
//     return ChoiceChip(
//       label: Text(label),
//       selected: false,
//       onSelected: (selected) {
//         controller.text = label;
//       },
//     );
//   }
// }
