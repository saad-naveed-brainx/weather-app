import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Maxico'),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(gradient: LightTheme.appGradient),
          child: Column(
            children: [
              SizedBox(height: AppConstants.font24Px * 8),
              Center(child: Text('New Maxico')),
            ],
          ),
        ),
      ),
    );
  }
}
