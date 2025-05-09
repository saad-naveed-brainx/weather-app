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
          'https://api.openweathermap.org/data/2.5/weather?q=Lahore&appid=afd38afd89bfebdd81cfdfdd56e35305&units=metric',
        )
        .then((response) {
          print(response.data);
          _weather = WeatherModel.fromJson(response.data);
    notifyListeners();
        });
    print(_weather?.cityName ?? 'No city name');
  }

  void setWeather(WeatherModel weather) {
    _weather = weather;
  }
}
