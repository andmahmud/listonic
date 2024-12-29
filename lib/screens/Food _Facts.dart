import 'package:flutter/material.dart';

class FoodFacts extends StatefulWidget {
  const FoodFacts({super.key});

  @override
  _FoodFactsState createState() => _FoodFactsState();
}

class _FoodFactsState extends State<FoodFacts> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> foodItems = [
    {'name': 'Ale beer', 'image': 'assets/images/favicon.png'},
    {'name': 'Alfredo sauce', 'image': 'assets/images/favicon.png'},
    {'name': 'Allspice', 'image': 'assets/images/favicon.png'},
    {'name': 'Almond milk', 'image': 'assets/images/favicon.png'},
    {'name': 'Almonds', 'image': 'assets/images/favicon.png'},
    {'name': 'American ', 'image': 'assets/images/favicon.png'},
    {'name': 'Apple', 'image': 'assets/images/favicon.png'},
    {'name': 'Avocado', 'image': 'assets/images/favicon.png'},
    {'name': 'Banana', 'image': 'assets/images/favicon.png'},
    {'name': 'Carrot', 'image': 'assets/images/favicon.png'},
    {'name': 'Celery', 'image': 'assets/images/favicon.png'},
    {'name': 'Chia seeds', 'image': 'assets/images/favicon.png'},
    {'name': 'Chili peppers', 'image': 'assets/images/favicon.png'},
    {'name': 'Coconut milk', 'image': 'assets/images/favicon.png'},
    {'name': 'Cucumber', 'image': 'assets/images/favicon.png'},
    {'name': 'Garlic', 'image': 'assets/images/favicon.png'},
    {'name': 'Lemon', 'image': 'assets/images/favicon.png'},
  ];

  List<Map<String, String>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = foodItems; // Start with all items
    _searchController.addListener(() {
      filterItems();
    });
  }

  void filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = foodItems
          .where((item) => item['name']!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food facts",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search for a product",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                "Tap on a product to learn more about its nutrients, uses, and storage tips",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  '#Fridge',
                  '#Freezer',
                  '#Vegan',
                  '#Vegetarian',
                  '#Keto',
                  '#Gluten free',
                  '#Low carb',
                  '#High protein',
                  '#Bulk',
                ]
                    .map(
                      (tag) => Chip(
                        label: Text(tag),
                        backgroundColor: Colors.grey[200],
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 cards in a row
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                var item = filteredItems[index];
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 169, 141, 144),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            item['image']!,
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item['name']!,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
