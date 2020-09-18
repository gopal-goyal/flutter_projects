import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: Center(
              child: (Text(
                'Ask me anything!',
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 30.0,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
              )),
            ),
            backgroundColor: Colors.pinkAccent,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    randomBall = Random().nextInt(5) + 1;
                    print('hello!');
                  },
                );
              },
              child: Image.asset('images/ball$randomBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
