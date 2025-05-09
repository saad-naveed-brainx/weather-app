import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'New Maxico',
              style: TextStyle(
                fontSize: AppConstants.font24Px,
                color: LightTheme.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Sun,November 16',
              style: TextStyle(
                fontSize: AppConstants.font14Px,
                color: LightTheme.normalTextColor,
                
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: AppConstants.font20Px * 2,
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: SvgPicture.asset('assets/images/sunny.svg')),
              Padding(
                padding: const EdgeInsets.all(AppConstants.font18Px * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mostly Sunny',
                      style: TextStyle(
                        fontSize: AppConstants.font24Px,
                        color: LightTheme.normalTextColor,
                      ),
                    ),
                    Text(
                      '18°',
                      style: TextStyle(
                        fontSize: AppConstants.font24Px,
                        color: LightTheme.normalTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
