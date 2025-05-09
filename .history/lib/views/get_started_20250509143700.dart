import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/config/theme/light.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(gradient: LightTheme.appGradient),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100),
              SvgPicture.asset('assets/images/rainy.svg'),
              SizedBox(height: 100),
              Column(
                children: [
                  Text('Weather'),
                  Text('Forecast App')              )
            ],
          ),
        ),
      ),
    );
  }
}
