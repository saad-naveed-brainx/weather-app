import 'package:flutter/material.dart';
import 'package:weather/views/Home.dart';

class AppRouter {
  static Function moveToHome =
      (BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
}
