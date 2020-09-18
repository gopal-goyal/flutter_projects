import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(Color color , int soundNumber){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
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
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.teal , 1),
              buildKey(Colors.green , 2),
              buildKey(Colors.pinkAccent , 3),
              buildKey(Colors.red , 4 ),
              buildKey(Colors.yellow , 5),
              buildKey(Colors.blue , 6),
              buildKey(Colors.orange , 7),
            ],
          ),
        ),
      ),
    );
  }
}
