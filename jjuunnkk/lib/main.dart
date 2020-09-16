import 'package:flutter/material.dart';

// the main function is the starting point of all flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('This is total JjuuunnnkK'),
        ),
        body: Center(
            child: Image(
          image: AssetImage('assets/images/jjunkkselfie.jpg'),
        )),
      ),
    ),
  );
}
