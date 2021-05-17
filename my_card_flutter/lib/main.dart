import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var time = DateTime.now();
  void updateTime() {
    time = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                ),
                Text(
                  'Gopal Goyal',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.blueGrey.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade50,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 94629-76187',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'goyal11.gopal@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      updateTime();
                    });
                    print('its working if the time updates');
                  },
                  child: Text(
                    '$time',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
