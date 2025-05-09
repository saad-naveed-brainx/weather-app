class WeatherModel {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final int humidity;
  final int visibility;
  final int unixTime;
  final int timezone;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.humidity,
    required this.visibility,
    required this.unixTime,
    required this.timezone,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    thisWeatherModel(
      cityName: json['name'],
      temperature: (json['main']['temp'] as num).toDouble(),
      feelsLike: (json['main']['feels_like'] as num).toDouble(),
      humidity: json['main']['humidity'],
      visibility: json['visibility'],
      unixTime: json['dt'],
      timezone: json['timezone'],
    );
  }

}
