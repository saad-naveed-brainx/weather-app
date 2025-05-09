import 'package:flutter/material.dart';

class ReusableCityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppConstants.font20Px),
            child: Text(
              'Lahore',
              style: TextStyle(
                fontSize: AppConstants.font18Px,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
