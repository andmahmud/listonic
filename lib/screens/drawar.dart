import 'package:flutter/material.dart';

// ignore: camel_case_types
class drawar extends StatelessWidget {
  const drawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 200, // Adjust the height as needed
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text(
                "MAHMUD!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold, // Makes the text bold
                  color: Colors.white, // Adds better contrast
                ),
              ),
              accountEmail: Text(
                "dev@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500, // Slightly bold for subtext
                  color: Colors.white, // Consistent white color
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white, // Adds contrast border
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("My List"),
            onTap: () => debugPrint("object"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Trash"),
            onTap: () => debugPrint("object"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => debugPrint("object"),
          ),
          ListTile(
            leading: Icon(Icons.print),
            title: Text("Appearance"),
            onTap: () => debugPrint("object"),
          ),
          ListTile(
            leading: Icon(Icons.diamond),
            title: Text("Remove Ads"),
            onTap: () => debugPrint("object"),
          )
        ],
      ),
    );
  }
}
