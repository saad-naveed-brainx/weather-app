import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.font12Px),
        child: Column(
          children: [Text('14:00'), Text('32°'), Icon(Icons.sunny)],
        ),
      ),
    );
  }
}
