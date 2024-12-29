// ignore: file_names
import 'package:flutter/material.dart';

class FoodFacts extends StatelessWidget {
  const FoodFacts({super.key});

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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3, // 3 cards in a row
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                {'name': 'Ale beer', 'image': 'assets/images/ale_beer.png'},
                {'name': 'Alfredo sauce', 'image': 'assets/images/alfredo_sauce.png'},
                {'name': 'Allspice', 'image': 'assets/images/allspice.png'},
                {'name': 'Almond milk', 'image': 'assets/images/almond_milk.png'},
                {'name': 'Almonds', 'image': 'assets/images/almonds.png'},
                {'name': 'American blueberries', 'image': 'assets/images/blueberries.png'},
              ]
                  .map(
                    (item) => Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Image.asset(
                                item['image'] as String,
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item['name'] as String,
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
