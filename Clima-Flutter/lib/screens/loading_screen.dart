import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async{
    Location location = Location();

    await location.getCurrentLocation();

    print(location.latitude);
    print(location.longitude);
  }

  void getData() async{
    http.Response response = await http.get('api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=2bsg5334nsios83nw933h38');
    print(response.statusCode);
    print(response.body);
  }


  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}