import 'package:flutter/material.dart';

class AppRouter {
  static Function moveToHome =
      (BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
}
