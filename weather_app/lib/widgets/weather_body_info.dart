import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherBodyInfo extends StatelessWidget {
  const WeatherBodyInfo({super.key, required this.weather});
  final WeatherModels weather;

  @override
  Widget build(BuildContext context) {
    WeatherModels weatherModels =
        BlocProvider.of<GetWeatherCubit>(context).weatherModels!;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          getThemeColor(weatherModels.weatherCondition),
          getThemeColor(weatherModels.weatherCondition)[300]!,
          getThemeColor(weatherModels.weatherCondition)[50]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            weatherModels.cityName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Updated at: ${weatherModels.date.hour}:${weatherModels.date.minute}",
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(weatherModels.image!),
              Text(
                weatherModels.temp.toString(),
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text("Maxtemp: ${weatherModels.maxTemp.round()}"),
                  Text("Mintemp: ${weatherModels.minTemp.round()}"),
                ],
              ),
            ],
          ),
          const Spacer(),
          Text(
            weatherModels.weatherCondition,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
