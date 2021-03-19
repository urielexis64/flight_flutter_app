import 'package:flight_app/src/pages/city_detail.dart';
import 'package:flight_app/constants.dart';
import 'package:flight_app/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight App',
      theme: Constants.themeData,
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'city_detail': (BuildContext context) => CityDetail(),
      },
    );
  }
}
