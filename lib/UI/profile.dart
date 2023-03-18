import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white70,
            minRadius: 60.0,
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://avatars0.githubusercontent.com/u/28812093?s=460&u=06471c90e03cfd8ce2855d217d157c93060da490&v=4'),
            ),
          ),
          SizedBox(height: 24.0),
          Text(
            'Mr. abc',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Divider(),
          SizedBox(height: 24.0),
          Text(
            'abcd@gmail.com',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Divider(),
          SizedBox(height: 24.0),
          Text(
            'No.23, Latha street, Yangon,',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Divider(),
          SizedBox(
            height: 30,
          )
        ],
      )),
    );
  }
}
