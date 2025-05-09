import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          
          child: Column(children: [Center(child: Text('New Maxico'))]),
        ),
      ),
    );
  }
}
