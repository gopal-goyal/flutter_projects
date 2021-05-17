import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  String keyword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: <Widget>[
        Container(padding: EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            hintText: 'Enter keyword!'),
      ),),],
      ),
    );
  }
}
