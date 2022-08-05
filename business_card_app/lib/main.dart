import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ColorFiltered(
                colorFilter: ColorFilter.matrix(<double>[
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                ]),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile-picture.jpeg'),
                  foregroundColor: Colors.black,
                  radius: 100.0,
                ),
              ),
              const Text(
                'Oliver Andreae',
                style: TextStyle(fontFamily: 'DM Serif Display', fontSize: 32.0),
              ),
              Text(
                'MATHS TUTOR',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Divider(color: Colors.grey[900]),
              ),
              Card(
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: const ListTile(
                  leading: Icon(Icons.phone),
                  iconColor: Colors.black,
                  title: Text('+44 7577 483820'),
                ),
              ),
              Card(
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: const ListTile(
                  leading: Icon(Icons.email),
                  iconColor: Colors.black,
                  title: Text('tuition@oliverandreae.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
