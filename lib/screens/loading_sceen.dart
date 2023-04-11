import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

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
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    }

    // LocationPermission permission;
    // permission = await Geolocator.checkPermission();
    // permission = await Geolocator.requestPermission();
    // if (permission == LocationPermission.denied) {
    //   //nothing
    // }
    // Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.low);
    catch (e) {
      print(e);
    }
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
