import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherChangeProvider extends ChangeNotifier {
  WeatherModel? _weather;

  WeatherModel? get weather => _weather;

  WeatherChangeProvider() async {
    await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?q=Lahore&appid=afd38afd89bfebdd81cfdfdd56e35305&units=metric',
    )
  }

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}
