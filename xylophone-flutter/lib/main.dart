import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$noteNumber.wav'));
  }

  Widget buildKey({required int noteNumber, Color? colour}) {
    assert(noteNumber >= 1 && noteNumber <= 7);
    return Expanded(
      child: MaterialButton(
        color: colour,
        onPressed: () => playSound(noteNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteNumber: 1, colour: Colors.red),
              buildKey(noteNumber: 2, colour: Colors.orange),
              buildKey(noteNumber: 3, colour: Colors.yellow),
              buildKey(noteNumber: 4, colour: Colors.green),
              buildKey(noteNumber: 5, colour: Colors.blue),
              buildKey(noteNumber: 6, colour: Colors.indigo),
              buildKey(noteNumber: 7, colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
