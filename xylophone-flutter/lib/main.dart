import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
    MaterialApp(home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Xylophone',
            style: TextStyle(
              letterSpacing: 3.5,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.teal.shade700,
              fontFamily: 'ArchitectsDaughter',
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: XylophoneApp(),

    ),),

);

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Container buildKey(Color color, int soundNumber) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100.0,
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            children: <Widget>[
              buildKey(Colors.teal, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.pinkAccent, 3),
              buildKey(Colors.red, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
