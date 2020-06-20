import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void PlaySound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        PlaySound(soundNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.yellowAccent, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.lightBlue, soundNumber: 4),
              buildKey(color: Colors.orangeAccent, soundNumber: 5),
              buildKey(color: Colors.purpleAccent, soundNumber: 6),
              buildKey(color: Colors.orangeAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
