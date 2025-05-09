import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';
import 'package:weather/core/constants/view_constants.dart';

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
              SizedBox(height: AppConstants.font24Px * 8),
              Center(child: SvgPicture.asset('assets/images/rainy.svg')),

              Padding(
                padding: const EdgeInsets.all(AppConstants.font18Px * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ViewConstants.weather,
                      style: TextStyle(
                        fontSize: AppConstants.font24Px * 2,
                        fontWeight: FontWeight.bold,
                        color: LightTheme.whiteTextColor,
                      ),
                    ),
                    Text(
                      ViewConstants.forecast,
                      style: TextStyle(
                        fontSize: AppConstants.font20Px * 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppConstants.font24Px),
                    Text(
                      ViewConstants.description,
                      style: TextStyle(
                        fontSize: AppConstants.font12Px,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: AppConstants.font24Px * 2),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppConstants.font24Px * 2,
                            vertical: AppConstants.font12Px,
                          ),
                          child: Text(
                            ViewConstants.getStarted,
                            style: TextStyle(
                              fontSize: AppConstants.font12Px,
                              color: Colors.black,
                            ),
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
