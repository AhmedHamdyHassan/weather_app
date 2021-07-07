import 'package:flutter/material.dart';
import 'Screens/city_weather_screen.dart';
import 'Screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoadingScreen(),
      routes: {CityWeatherScreen.routeKey: (context) => CityWeatherScreen()},
    );
  }
}
