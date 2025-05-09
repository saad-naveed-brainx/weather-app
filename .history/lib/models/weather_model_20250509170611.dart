import 'package:flutter/material.dart';

class WeatherModel {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final double humidity;
  final double visibility;
  final int unixTime;
  final S
  WeatherModel(this.temperature, this.cityName) {}
}
