import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

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
                  fontSize: 24,
                  color: LightTheme.normalTextColor,
                ),
              ),
            Text(
              'Sun,November 16',
              style: TextStyle(
                fontSize: 16,
                color: LightTheme.normalTextColor,
              ),
            ),
            ],
          ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
      ),
      body: SafeArea(child: Container()),
    );
  }
}
