import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Maxico'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.plus))],
      ),
      body: SafeArea(child: Container()),
    );
  }
}
