import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text('Music'),
          ),
        ),
        body: musicApp(),
      ),
    ),
  );
}

class musicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
