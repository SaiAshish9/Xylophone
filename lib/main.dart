import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

// audio_players --> from internet
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey({Color color, int x}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(x);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.deepPurple[400], x: 1),
              buildKey(color: Colors.indigo, x: 2),
              buildKey(color: Colors.blue, x: 3),
              buildKey(color: Colors.green, x: 4),
              buildKey(color: Colors.yellow, x: 5),
              buildKey(color: Colors.orange, x: 6),
              buildKey(color: Colors.red, x: 7),
            ],
          ),
          // child: Center(child: Text(nouns.last)),
        ),
      ),
    );
  }
}
