import 'package:flutter/material.dart';

class drawar extends StatelessWidget {
  const drawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text(
                "Hello!",
                style: TextStyle(fontSize: 30),
              ),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                      child: Image.network(
                          "https://sdn.i1apk.com/wp-content/uploads/Listonic-icon.jpg"))),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("My List"),
              onTap: () => print("object"), 
            ),ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trush"),
              onTap: () => print("object"), 
            ),ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () => print("object"), 
            ),ListTile(
              leading: Icon(Icons.print),
              title: Text("Appearnce"),
              onTap: () => print("object"), 
            ),ListTile(
              leading: Icon(Icons.diamond),
              title: Text("Remove Ads"),
              onTap: () => print("object"), 
            )
          
        ],
      ),

      
    );
  }
}
