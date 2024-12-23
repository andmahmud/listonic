import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of products
    final products = [
      {"name": "Laptop", "price": "\$999", "image": "assets/images/logo.png"},
      {"name": "Phone", "price": "\$699", "image": "assets/images/logo.png"},
      {
        "name": "Headphones",
        "price": "\$199",
        "image": "assets/images/logo.png"
      },
      {
        "name": "Smartwatch",
        "price": "\$149",
        "image": "assets/images/logo.png"
      },
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
      {"name": "Camera", "price": "\$499", "image": "assets/images/logo.png"},
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Product List"),
      //   backgroundColor: Colors.teal,
      // ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.asset(
                product['image']!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                product['name']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                product['price']!,
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              onTap: () {
                // Handle item tap (e.g., navigate to product details)
                print("Tapped on ${product['name']}");
              },
            ),
          );
        },
      ),
    );
  }
}
