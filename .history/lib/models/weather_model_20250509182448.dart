class WeatherModel {
  final String cityName;
  final double temperature;
  final double feelsLike;
  final int humidity;
  final int visibility;
  final int unixTime;
  final int timezone;
  final DateTime actualDate;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.feelsLike,
    required this.humidity,
    required this.visibility,
    required this.unixTime,
    required this.timezone,
    required this.actualDate,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    WeatherModel model = WeatherModel(
      cityName: json['name'],
      temperature: (json['main']['temp'] as num).toDouble(),
      feelsLike: (json['main']['feels_like'] as num).toDouble(),
      humidity: json['main']['humidity'],
      visibility: json['visibility'],
      unixTime: json['dt'],
      timezone: json['timezone'],
    );
    return model;
  }
}
