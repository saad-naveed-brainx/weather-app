import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_constants.dart';
import 'package:weather/widgets/reusable_city_card.dart';
class Cities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose a city')),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.font12Px * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cities',
              style: TextStyle(
                fontSize: AppConstants.font18Px,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppConstants.font12Px),
            ReusableCityCard(cityName: 'Mandi Bahauddin'),
            
          ],
        ),
      ),
    );
  }
}
