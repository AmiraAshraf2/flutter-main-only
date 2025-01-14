class WeatherModels {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;

  WeatherModels({
    required this.cityName,
    required this.date,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
  });

  factory WeatherModels.fromJson(json) {
    return WeatherModels(
        cityName: json["location"]["name"],
        date: DateTime.parse(json["current"]["last_updated"]),
        temp: json["current"]["temp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        weatherCondition: json["current"]["condition"]["text"],
        image: "https:${json["current"]["condition"]["icon"]}");
  }
}
