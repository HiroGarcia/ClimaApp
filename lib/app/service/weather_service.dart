import 'dart:convert';
import 'package:climapp/app/adapters/http_adapter.dart';
import 'package:climapp/app/consts/enums.dart';
import 'package:climapp/app/models/weather_model.dart';

class WeatherService {
  final String _baseUrl = Environment.development.baseUrl;
  final String _apiKey = Environment.development.resolvedApiKey;
  final IHttpAdapter httpClient;

  WeatherService(this.httpClient);

  Future<WeatherModel> getWeatherByCity(String cityName) async {
    final url = '$_baseUrl?key=$_apiKey&city_name=$cityName&unit=metric';

    final response = await httpClient.get(url);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(response.body)['results']);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
