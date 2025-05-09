import 'package:flutter/material.dart';

class WeatherModel {
  final String cityName;
  final double temperature;
  final double feelsLike; 
  final double humidity

  WeatherModel(this.temperature, this.cityName) {}
}
