import 'package:flutter/material.dart';



class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
           Text(
                'Hello! 👋',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      ),
      body: Column(
        children: [
           Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                     
                      title: Text('LOG IN',
                      style: TextStyle(color: Colors.white,
                       fontWeight: FontWeight.bold,),
                      ),
                      
                      trailing: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.grey),
                  title: Text('Settings'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.color_lens, color: Colors.grey),
                  title: Text('Appearance'),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.diamond, color: Colors.amber),
                      title: Text('Holiday sale!',
                      style: TextStyle(color: Colors.white,
                       fontWeight: FontWeight.bold,),
                      ),
                      trailing: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '-33%',
                          style: TextStyle(
                            color: Colors.green,
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            
                          ),
                          
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.favorite, color: Colors.red),
                  title: Text('Enjoying the app?'),
                  subtitle: Text('Rate us ★★★★★ on Google Play'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.help, color: Colors.grey),
                  title: Text('Help & feedback'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.translate, color: Colors.grey),
                  title: Text('Help us translate'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'PRIVACY POLICY',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  ' • ',
                  style: TextStyle(color: Colors.green),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'TERMS OF SERVICE',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
   
    );
  }
}
