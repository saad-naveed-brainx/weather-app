import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import 'package:dio/dio.dart';

final dio = Dio();
class WeatherChangeProvider extends ChangeNotifier {
  WeatherModel? _weather;

  WeatherModel? get weather => _weather;

  WeatherChangeProvider() {
    dio.get('https://api.openweathermap.org/data/2.5/weather?q=Lahore&appid=afd38afd89bfebdd81cfdfdd56e35305&units=metric').then((response) {
      _weather = WeatherModel.fromJson(response.data);
    });
  }

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}
