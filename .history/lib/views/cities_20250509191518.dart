import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_constants.dart';

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
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppConstants.font20Px),
                    child: Text(
                      'New York',
                      style: TextStyle(
                        fontSize: AppConstants.font18Px,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
