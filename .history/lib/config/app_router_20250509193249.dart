import 'package:flutter/material.dart';
import 'package:weather/views/Home.dart';
import 'package:weather/views/cities.dart';

class AppRouter {
  static Function moveToHome =
      (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );

  static Function moveToCities =
      (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Cities()),
      );

      statoc
}
