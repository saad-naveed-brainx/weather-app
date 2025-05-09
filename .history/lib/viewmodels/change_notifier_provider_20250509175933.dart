import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherChangeProvider extends ChangeNotifier {
  WeatherModel? _weather;

  WeatherModel? get weather => _weather;

  WeatherChangeProvider(){
    dio.get(
      
    )
  }

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}
