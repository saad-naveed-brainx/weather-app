import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(gradient: LightTheme.appGradient),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 200),
              Center(child: SvgPicture.asset('assets/images/rainy.svg')),

              Padding(
                padding: const EdgeInsets.all(AppConstants.font18Px * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weather',
                      style: TextStyle(
                        fontSize: AppConstants.font24Px * 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Forecast App',
                      style: TextStyle(
                        fontSize: AppConstants.font20Px * 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 23),
                    Text(
                      'It\'s the newest weather app. It has a bunch of features and that includes most of the ones that every weather app has',
                      style: TextStyle(
                        fontSize: AppConstants.font12Px,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 42),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: AppConstants.font12Px,
                            color: Colors.black,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
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
