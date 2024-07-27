import 'dart:convert';

import 'package:weather_app/data/data_provider/weather_data_provider.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherRepository {
  final WeatherDataProvider weatherDataProvider;

  WeatherRepository(this.weatherDataProvider);
  Future<WeatherModels> getCurrentWeather() async {
    try {
      String cityName = 'Bharatpur';
      final weatherData = await weatherDataProvider.getCurrentWeather(cityName);
      final data = jsonDecode(weatherData);
      if (data['cod'] != '200') {
        throw 'An unexpected error occured';
      }
      return WeatherModels.fromMap(data);
    } catch (e) {
      throw e.toString();
    }
  }
}
