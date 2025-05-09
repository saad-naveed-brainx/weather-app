import 'package:flutter/material.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';

class ReusableEverydayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mon, Nov 17',
                                style: TextStyle(
                                  color: LightTheme.whiteTextColor,
                                  fontSize: AppConstants.font14Px,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '33°',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font24Px),
                                  Text(
                                    '24°',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font24Px),
                                  Icon(
                                    Icons.sunny,
                                    color: LightTheme.whiteTextColor,
                                  ),
                                ],
                              ),
                            ],
                          ),;
  }
}
