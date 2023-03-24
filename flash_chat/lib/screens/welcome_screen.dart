import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/rounded_button.dart';
import '../constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'flash-image',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              text: 'Login',
              onPressed: () => context.push(Routes.login),
              colour: Colors.lightBlueAccent,
            ),
            RoundedButton(
              text: 'Register',
              onPressed: () => context.push(Routes.registration),
              colour: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
