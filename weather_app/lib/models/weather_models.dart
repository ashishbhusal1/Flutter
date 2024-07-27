// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WeatherModels {
  final double currentTemp;
  final String currentSky;
  final double currentHumidity;
  final double currentWindSpeed;
  final double currentPressure;
  WeatherModels({
    required this.currentTemp,
    required this.currentSky,
    required this.currentHumidity,
    required this.currentWindSpeed,
    required this.currentPressure,
  });

  WeatherModels copyWith({
    double? currentTemp,
    String? currentSky,
    double? currentHumidity,
    double? currentWindSpeed,
    double? currentPressure,
  }) {
    return WeatherModels(
      currentTemp: currentTemp ?? this.currentTemp,
      currentSky: currentSky ?? this.currentSky,
      currentHumidity: currentHumidity ?? this.currentHumidity,
      currentWindSpeed: currentWindSpeed ?? this.currentWindSpeed,
      currentPressure: currentPressure ?? this.currentPressure,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentTemp': currentTemp,
      'currentSky': currentSky,
      'currentHumidity': currentHumidity,
      'currentWindSpeed': currentWindSpeed,
      'currentPressure': currentPressure,
    };
  }

  factory WeatherModels.fromMap(Map<String, dynamic> map) {
    final currentWeatherData = map['list'][0];
    return WeatherModels(
      currentTemp: currentWeatherData['main']['temp'],
      currentSky: currentWeatherData['weather'][0]['main'],
      currentHumidity: currentWeatherData['main']['humidity'],
      currentWindSpeed: currentWeatherData['wind']['speed'],
      currentPressure: currentWeatherData['main']['pressure'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModels.fromJson(String source) =>
      WeatherModels.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WeatherModels(currentTemp: $currentTemp, currentSky: $currentSky, currentHumidity: $currentHumidity, currentWindSpeed: $currentWindSpeed, currentPressure: $currentPressure)';
  }

  @override
  bool operator ==(covariant WeatherModels other) {
    if (identical(this, other)) return true;

    return other.currentTemp == currentTemp &&
        other.currentSky == currentSky &&
        other.currentHumidity == currentHumidity &&
        other.currentWindSpeed == currentWindSpeed &&
        other.currentPressure == currentPressure;
  }

  @override
  int get hashCode {
    return currentTemp.hashCode ^
        currentSky.hashCode ^
        currentHumidity.hashCode ^
        currentWindSpeed.hashCode ^
        currentPressure.hashCode;
  }
}
