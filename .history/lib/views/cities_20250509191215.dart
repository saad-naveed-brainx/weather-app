import 'package:flutter/material.dart';
import 'package:weather/config/appconsta.dart';
class Cities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a city'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            Text('My Cities'),
        
          ],
        ),
      ),
    );
  }
} 