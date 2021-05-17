import 'package:flutter/material.dart';

//pages
import 'package:baazi_app/Screens/help_section.dart';
import 'package:baazi_app/Screens/search_engine.dart';
import 'package:baazi_app/Screens/setting.dart';

void main() {
  runApp(Baazi());
}

class Baazi extends StatelessWidget {
  const Baazi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD3FFFE),
        appBar: AppBar(
          backgroundColor: Color(0xFF002F35),
          title: Text('Baazi'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Search engine'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SearchPage()));
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Settings()));
                },
              ),
              ListTile(
                title: Text('Help Section'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HelpSection()));
                },
              ),
            ],
          ),
        ),
      );
  }
}

