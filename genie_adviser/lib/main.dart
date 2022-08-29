import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Genie App'),
            backgroundColor: Colors.green[800],
          ),
          body: const GeniePage(),
        ),
      ),
    );
  }
}

class GeniePage extends StatefulWidget {
  const GeniePage({Key? key}) : super(key: key);

  @override
  State<GeniePage> createState() => _GeniePageState();
}

class _GeniePageState extends State<GeniePage> {
  String answer = 'Yes';
  Color background = Colors.green.shade800;

  void chooseAnswer() {
    switch (Random().nextInt(3)) {
      case 0:
        answer = "Yes";
        background = Colors.green.shade800;
        break;
      case 1:
        answer = "No";
        background = Colors.red.shade800;
        break;
      case 2:
        answer = "Maybe";
        background = Colors.amber.shade900;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Card(
        elevation: 0,
        margin: const EdgeInsets.all(50),
        color: background,
        child: Center(
          child: Text(
            answer,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 70.0),
          ),
        ),
      ),
      Image.asset('assets/images/detective.png'),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () => setState(() => chooseAnswer()),
          style: ElevatedButton.styleFrom(primary: Colors.green[800]),
          child: const Text(
            'How should I answer?',
            style: (TextStyle(fontSize: 18.0)),
          ),
        ),
      )
    ]);
  }
}