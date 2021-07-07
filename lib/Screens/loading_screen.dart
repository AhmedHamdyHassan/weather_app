import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/Models/user_location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Screens/city_weather_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double long, lat;

  Future<void> getCurrentLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    print(isLocationServiceEnabled);
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest);
    long = position.longitude;
    lat = position.latitude;
    Navigator.of(context).pushNamed(CityWeatherScreen.routeKey);
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF202020),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/images/Icon.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SpinKitRing(
              color: Color(0xFFC63E37),
              size: 50,
            )
          ],
        )));
  }
}
