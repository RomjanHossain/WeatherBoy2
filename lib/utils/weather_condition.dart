import 'package:weatherboy2/models/weather_condition.dart';

List<WeatherConditionModel> weatherConditions = [
  WeatherConditionModel.fromJson(const {
    "code": 200,
    "description": "Thunderstorm",
    "main": "Thunderstorm"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 201,
    "description": "Thunderstorm with light rain",
    "main": "Thunderstorm with light rain"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 202,
    "description": "Thunderstorm with rain",
    "main": "Thunderstorm with rain"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 210,
    "description": "Light thunderstorm",
    "main": "Light thunderstorm"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 211,
    "description": "Thunderstorm",
    "main": "Thunderstorm"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 212,
    "description": "Heavy thunderstorm",
    "main": "Heavy thunderstorm"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 221,
    "description": "Ragged thunderstorm",
    "main": "Ragged thunderstorm"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 230,
    "description": "Thunderstorm with light drizzle",
    "main": "Thunderstorm with light drizzle"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 231,
    "description": "Thunderstorm with drizzle",
    "main": "Thunderstorm with drizzle"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 232,
    "description": "Thunderstorm with heavy drizzle",
    "main": "Thunderstorm with heavy drizzle"
  }),

  ///! 300
  WeatherConditionModel.fromJson(const {
    "code": 300,
    "description": "Light intensity drizzle",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 301, "description": "Drizzle", "main": "Drizzle"}),
  WeatherConditionModel.fromJson(const {
    "code": 302,
    "description": "Heavy intensity drizzle",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 310,
    "description": "Light intensity drizzle rain",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 311, "description": "Drizzle rain", "main": "Drizzle"}),
  WeatherConditionModel.fromJson(const {
    "code": 312,
    "description": "Heavy intensity drizzle rain",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 313,
    "description": "Shower rain and drizzle",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(const {
    "code": 314,
    "description": "Heavy shower rain and drizzle",
    "main": "Drizzle"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 321, "description": "Shower drizzle", "main": "Drizzle"}),

  ///! 500
  WeatherConditionModel.fromJson(
      const {"code": 500, "description": "Light rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(
      const {"code": 501, "description": "Moderate rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(const {
    "code": 502,
    "description": "Heavy intensity rain",
    "main": "Rain"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 503, "description": "Very heavy rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(
      const {"code": 504, "description": "Extreme rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(
      const {"code": 511, "description": "Freezing rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(const {
    "code": 520,
    "description": "Light intensity shower rain",
    "main": "Rain"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 521, "description": "Shower rain", "main": "Rain"}),
  WeatherConditionModel.fromJson(const {
    "code": 522,
    "description": "Heavy intensity shower rain",
    "main": "Rain"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 531, "description": "Ragged shower rain", "main": "Rain"}),

  ///! 400

  WeatherConditionModel.fromJson(
      const {"code": 600, "description": "Light snow", "main": "Snow"}),

  WeatherConditionModel.fromJson(
      const {"code": 601, "description": "Snow", "main": "Snow"}),

  WeatherConditionModel.fromJson(
      const {"code": 602, "description": "Heavy snow", "main": "Snow"}),

  WeatherConditionModel.fromJson(
      const {"code": 611, "description": "Sleet", "main": "Snow"}),
  WeatherConditionModel.fromJson(
      const {"code": 612, "description": "Light shower sleet", "main": "Snow"}),
  WeatherConditionModel.fromJson(
      const {"code": 613, "description": "Shower sleet", "main": "Snow"}),
  WeatherConditionModel.fromJson(const {
    "code": 615,
    "description": "Light rain and snow",
    "main": "Snow"
  }),
  WeatherConditionModel.fromJson(
      const {"code": 616, "description": "Rain and snow", "main": "Snow"}),
  WeatherConditionModel.fromJson(
      const {"code": 620, "description": "Light shower snow", "main": "Snow"}),
  WeatherConditionModel.fromJson(
      const {"code": 621, "description": "Shower snow", "main": "Snow"}),
  WeatherConditionModel.fromJson(
      const {"code": 622, "description": "Heavy shower snow", "main": "Snow"}),

  ///! 700
  WeatherConditionModel.fromJson(
      const {"code": 701, "description": "Mist", "main": "Mist"}),
  WeatherConditionModel.fromJson(
      const {"code": 711, "description": "Smoke", "main": "Smoke"}),
  WeatherConditionModel.fromJson(
      const {"code": 721, "description": "Haze", "main": "Haze"}),
  WeatherConditionModel.fromJson(
      const {"code": 731, "description": "Sand, dust whirls", "main": "Dust"}),
  WeatherConditionModel.fromJson(
      const {"code": 741, "description": "Fog", "main": "Fog"}),
  WeatherConditionModel.fromJson(
      const {"code": 751, "description": "Sand", "main": "Sand"}),
  WeatherConditionModel.fromJson(
      const {"code": 761, "description": "Dust", "main": "Dust"}),
  WeatherConditionModel.fromJson(
      const {"code": 762, "description": "Volcanic ash", "main": "Ash"}),
  WeatherConditionModel.fromJson(
      const {"code": 771, "description": "Squalls", "main": "Squall"}),
  WeatherConditionModel.fromJson(
      const {"code": 781, "description": "Tornado", "main": "Tornado"}),

  ///! 800
  WeatherConditionModel.fromJson(
      const {"code": 800, "description": "Clear sky", "main": "Clear"}),
];
