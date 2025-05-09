import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: LightTheme.cardBlue,
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.font12Px),
        child: Column(
          children: [
            Text('14:00', style: TextStyle(color: LightTheme.whiteTextColor)),
            SizedBox(height: appconsta),
            Text('32°', style: TextStyle(color: LightTheme.whiteTextColor)),
            SizedBox(height: 10),
            Icon(Icons.sunny, color: LightTheme.whiteTextColor),
          ],
        ),
      ),
    );
  }
}
