import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String imageUrl;

  Product(
      {required this.name, required this.description, required this.imageUrl});
}

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("All Products"),
      //   backgroundColor: Colors.teal,
      // ),
      body: AllProductsListView(),
    );
  }
}

class AllProductsListView extends StatelessWidget {
  // Sample list of products
  final List<Product> products = [
    Product(
      name: "Laptop",
      description: "High performance laptop with 16GB RAM.",
      imageUrl: "assets/images/logo.png",
    ),
    Product(
      name: "Smartphone",
      description: "Latest smartphone with amazing camera.",
      imageUrl: "assets/images/logo.png",
    ),
    Product(
      name: "Headphones",
      description: "Noise-canceling headphones with 30-hour battery.",
      imageUrl: "assets/images/logo.png",
    ),
    // Add more products as needed
  ];

  AllProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: ListTile(
            leading: Image.network(product.imageUrl, width: 50, height: 50),
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Icon(Icons.shopping_cart),
            onTap: () {
              // Handle product tap
            },
          ),
        );
      },
    );
  }
}
