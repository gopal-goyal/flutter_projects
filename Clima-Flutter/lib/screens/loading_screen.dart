import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = 'befae459a07773f5b9705e12831c62f0';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async{
    Location location = Location();

    await location.getCurrentLocation();

    latitude =location.latitude;
    longitude = location.longitude;

    getData();
  }

  void getData() async{
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    if(response.statusCode == 200){
      String data = response.body;
      print(data);
      var temperature = jsonDecode(data)['main']['temp'];
      var city = jsonDecode(data)['name'];
      print(temperature);
      print(city);
      
    } else{
      print(response.statusCode);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

