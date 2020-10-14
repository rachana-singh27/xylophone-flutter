import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();

    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int n}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, n: 1),
              buildKey(color: Colors.orangeAccent, n: 2),
              buildKey(color: Colors.yellowAccent, n: 3),
              buildKey(color: Colors.lightGreenAccent, n: 4),
              buildKey(color: Colors.blue, n: 5),
              buildKey(color: Colors.indigo, n: 6),
              buildKey(color: Colors.purpleAccent, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
