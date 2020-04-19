import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.orangeAccent, num: 1),
              buildKey(color: Colors.orangeAccent.shade400, num: 2),
              buildKey(color: Colors.yellow.shade300, num: 3),
              buildKey(color: Colors.yellow.shade600, num: 4),
              buildKey(color: Colors.green.shade300, num: 5),
              buildKey(color: Colors.green.shade500, num: 6),
              buildKey(color: Colors.green.shade800, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
