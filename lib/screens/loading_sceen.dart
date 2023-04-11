import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:climate_flutter/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double updatedMargin;
    try {
      updatedMargin = double.parse(myMargin);
    } catch (e) {
      print(e);
      updatedMargin = 30.0;
    }
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(updatedMargin),
        color: Colors.red,
      ),
    );
  }
}
