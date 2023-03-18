import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.security),
            title: const Text(' Security and Privacy '),
            onTap: () {
              //  Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: const Text(' Language '),
            onTap: () {
              //  Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text(' Logout'),
            onTap: () {
              //  Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
