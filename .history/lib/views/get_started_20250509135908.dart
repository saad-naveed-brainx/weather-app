import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        contex
        decoration: BoxDecoration(gradient: LightTheme.appGradient),
        child: Column(children: [Text('Get Started')]),
      ),
    );
  }
}
