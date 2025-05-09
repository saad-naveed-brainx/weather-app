import 'package:flutter/material.dart';

class WeatherChangeProvider extends ChangeNotifier {
  WeatherModel? _weather;

  WeatherModel? get weather => _weather;

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}