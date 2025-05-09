import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_constants.dart';
class Cities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a city'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(A),
        child: Column(
          children: [
            
            Text('My Cities'),
        
          ],
        ),
      ),
    );
  }
} 