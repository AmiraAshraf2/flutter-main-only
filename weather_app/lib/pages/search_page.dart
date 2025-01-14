import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

import '../main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
            .weatherModels
            ?.weatherCondition),
        title: const Text(
          "Search City",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              labelText: "Search",
              suffixIcon: Icon(Icons.search),
              hintText: "Enter City Name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
