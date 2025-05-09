import 'package:flutter/material.dart';

class WeatherModel {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final double humidity;
  final double visibility;
  final int unixTime;
  final String timezone;
  final String weatherDescription;
  final String weatherIcon;
  final double uvIndex;
  final double windSpeed;
  final double windDirection;
  
  WeatherModel(this.temperature, this.cityName) {}
}
