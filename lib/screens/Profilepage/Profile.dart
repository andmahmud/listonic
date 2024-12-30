import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hello! 👋',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/logo.png', // Replace with your image path
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // 'LOG IN' Section Wrapped with Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.green.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                title: const Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Log in to share and sync lists",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ),
          ),

          // Rest of the ListView
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.grey),
                  title: const Text('Settings'),
                  onTap: () {
                    // TODO: Navigate to Settings
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(Icons.color_lens, color: Colors.grey),
                  title: const Text('Appearance'),
                  onTap: () {
                    // TODO: Navigate to Appearance Settings
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.diamond, color: Colors.amber),
                      title: const Text(
                        'Holiday sale!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          '-33%',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () {
                        // TODO: Navigate to Holiday Sale Details
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Divider(),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(Icons.favorite, color: Colors.red),
                  title: const Text('Enjoying the app?'),
                  subtitle: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Rate us ',
                          style: DefaultTextStyle.of(context).style,
                        ),
                        TextSpan(
                          text: '★★★★★',
                          style: TextStyle(
                            color: Colors.amber, // Gold color for stars
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' on Google Play',
                          style: DefaultTextStyle.of(context).style,
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // TODO: Implement Rating Functionality
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(Icons.help, color: Colors.grey),
                  title: const Text('Help & feedback'),
                  onTap: () {
                    // TODO: Navigate to Help & Feedback
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.translate, color: Colors.grey),
                  title: const Text('Help us translate'),
                  onTap: () {
                    // TODO: Navigate to Translation Contributions
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Privacy Policy and Terms of Service
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to Privacy Policy
                  },
                  child: const Text(
                    'PRIVACY POLICY',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Text(
                  ' • ',
                  style: TextStyle(color: Colors.green),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to Terms of Service
                  },
                  child: const Text(
                    'TERMS OF SERVICE',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
