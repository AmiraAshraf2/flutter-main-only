import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModels? weatherModels;
  getWeather({required String cityName}) async {
    try {
      weatherModels =
          await WeatherService(Dio()).getCurrntWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModels: weatherModels!));
    } catch (e) {
      emit(WeatherFailureState(errMessage: e.toString()));
    }
  }
}
