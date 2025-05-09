import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherChangeProvider extends ChangeNotifier {
  WeatherModel? _weather;
  final _dio = Dio();

  WeatherModel? get weather => _weather;

  WeatherChangeProvider() {
    _dio
        .get(
          'https://api.openweathermap.org/data/2.5/weather?q=London&appid=afd38afd89bfebdd81cfdfdd56e35305&units=metric',
        )
        .then((response) {
          _weather = WeatherModel.fromJson(response.data);
          notifyListeners();
        });
  }

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}
