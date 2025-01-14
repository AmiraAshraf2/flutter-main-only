import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_body_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
            .weatherModels
            ?.weatherCondition),
        title: const Text(
          "Weather App",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SearchPage();
              }));
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherInitialState) {
          return const NoWeatherBody();
        } else if (state is WeatherLoadedState) {
          return WeatherBodyInfo(
            weather: state.weatherModels,
          );
        } else {
          return const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'there is a problem Try again Later 😔',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          );
        }
      }),
    );
  }
}


// cubit pattern steps
//  create states
//  create cubit
//  create function
//  provide cubit
//  integrate cubit
//  trigger cubit