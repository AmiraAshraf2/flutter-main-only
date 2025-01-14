import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherService {
  final Dio dio;
  final String baseURL = "https://api.weatherapi.com/v1";
  final String apiKey = "28e87a0d518946bf921143417242812";

  WeatherService(this.dio);

  Future<WeatherModels> getCurrntWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get("$baseURL/forecast.json?key=$apiKey&q=$cityName");
      WeatherModels weatherModels = WeatherModels.fromJson(response.data);
      return weatherModels;
    } on DioException catch (e) {
      final String errMessage = e.response?.data["error"]["message"] ??
          "opps there was an error,Try again Later";
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("Try again Later");
    }
  }
}
