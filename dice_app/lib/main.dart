import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var random = new Random(DateTime.now().millisecondsSinceEpoch);
  int leftDieNumber = 4;
  int rightDieNumber = 1;

  void throwDice() {
    leftDieNumber = random.nextInt(6) + 1;
    rightDieNumber = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: MaterialButton(
            child: Image.asset('images/dice$leftDieNumber.png'),
            onPressed: () => setState(() => throwDice()),
          ),
        ),
        Expanded(
          child: MaterialButton(
            child: Image.asset('images/dice$rightDieNumber.png'),
            onPressed: () => setState(() => throwDice()),
          ),
        ),
      ]),
    );
  }
}
