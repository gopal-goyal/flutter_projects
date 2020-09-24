import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          diceButton(leftDiceNumber),
          diceButton(rightDiceNumber),
        ],
      ),
    );
  }

  Expanded diceButton(int number) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          changeDiceFace();
          final player = AudioCache();
          player.play('rolldice.mp3');
        },
        child: Image.asset('assets/images/dice$number.png'),
      ),
    );
  }
}
