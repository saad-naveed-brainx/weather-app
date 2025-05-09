import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/config/theme/light.dart';
import 'package:weather/core/constants/app_constants.dart';
import 'package:weather/widgets/reusable_card.dart';
import 'package:weather/widgets/reusable_everyday_card.dart';
import 'package:provider/provider.dart';
import 'package:weather/viewmodels/change_notifier_provider.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherChangeProvider>(
      builder: (context, weatherProvider, child) {
        final weather = weatherProvider.weather;
        return Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                Text(
                  weather?.cityName ?? 'Loading...',
                  style: TextStyle(
                    fontSize: AppConstants.font24Px,
                    color: LightTheme.darkBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat(
                    'EEE, MMMM d',
                  ).format(weather?.actualDate ?? DateTime.now()),
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
          body: SingleChildScrollView(
            child: SafeArea(
              bottom: false,
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
                          weather?.Condition ?? 'Loading...',
                          style: TextStyle(
                            fontSize: AppConstants.font24Px,
                            color: LightTheme.blue,
                          ),
                        ),
                        Text(
                          '${weather?.temperature}°',
                          style: TextStyle(
                            fontSize: AppConstants.font24Px * 3,
                            color: LightTheme.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LightTheme.appGradient,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppConstants.font24Px * 2),
                        topRight: Radius.circular(AppConstants.font24Px * 2),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppConstants.font18Px * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          
                          Text(
                            'Detail',
                            style: TextStyle(
                              color: LightTheme.whiteTextColor,
                              fontSize: AppConstants.font18Px,
                            ),
                          ),
                          SizedBox(height: AppConstants.font12Px),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Row(
                                children: [
                                  Text(
                                    'Real Feel',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font12Px),
                                  Text(
                                    '${weather?.feelsLike}°',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Visibility',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font12Px),
                                  Text(
                                    '${weather?.visibility}m',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: AppConstants.font24Px),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Humidity',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font12Px),
                                  Text(
                                    '${weather?.humidity}%',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Sea Level',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                  SizedBox(width: AppConstants.font12Px),
                                  Text(
                                    '${weather?.seaLevel}m',
                                    style: TextStyle(
                                      color: LightTheme.whiteTextColor,
                                      fontSize: AppConstants.font12Px,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                              color: LightTheme.whiteTextColor,
                              fontSize: AppConstants.font18Px,
                            ),
                          ),
                          SizedBox(height: AppConstants.font12Px),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                                ReusableCard(),
                              ],
                            ),
                          ),
                          SizedBox(height: AppConstants.font12Px),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: LightTheme.whiteTextColor,
                          ),
                          SizedBox(height: AppConstants.font12Px),
                          Text(
                            'Every Day',
                            style: TextStyle(
                              color: LightTheme.whiteTextColor,
                              fontSize: AppConstants.font18Px,
                            ),
                          ),
                          SizedBox(height: AppConstants.font12Px),
                          Column(
                            children: [
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                              ReusableEverydayCard(),
                              SizedBox(height: AppConstants.font12Px),
                            ],
                          ),
                          

                          SizedBox(height: AppConstants.font24Px),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
