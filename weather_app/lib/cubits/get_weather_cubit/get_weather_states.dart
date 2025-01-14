import 'package:weather_app/models/weather_models.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModels weatherModels;

  WeatherLoadedState({required this.weatherModels});
}

class WeatherFailureState extends WeatherState {
  final String errMessage;

  WeatherFailureState({required this.errMessage});
}
