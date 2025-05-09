import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'New Maxico',
              style: TextStyle(
                fontSize: AppConstants.font18Px,
                color: LightTheme.normalTextColor,
              ),
            ),
            Text(
              'Sun,November 16',
              style: TextStyle(
                fontSize: AppConstants.font12Px,
                color: LightTheme.normalTextColor,
              ),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SafeArea(child: Container()),
    );
  }
}
