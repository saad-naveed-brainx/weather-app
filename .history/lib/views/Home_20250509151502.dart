import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'New Maxico'),
              TextSpan(text: 'Sun,November 16'),
            ],
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SafeArea(child: Container()),
    );
  }
}
