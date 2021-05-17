import 'package:flutter/material.dart';

class HelpSection extends StatefulWidget {
  const HelpSection({Key key}) : super(key: key);

  @override
  _HelpSectionState createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Help!'),
      ),
    );
  }
}
