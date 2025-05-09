import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/core/constants/app_constants.dart';
import 'package:weather/viewmodels/change_notifier_provider.dart';
import 'package:weather/core/router/app_router.dart';

class ReusableCityCard extends StatelessWidget {
  final String cityName;
  ReusableCityCard({required this.cityName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => {
            Provider.of<WeatherChangeProvider>(
              context,
              listen: false,
            ).getWeather(cityName),
          },
          
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppConstants.font20Px),
              child: Text(
                cityName,
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
    );
  }
}
