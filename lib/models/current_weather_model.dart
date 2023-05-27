import 'clouds_model.dart';
import 'main_model.dart';
import 'sys_model.dart';
import 'weather_model.dart';
import 'wind_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_weather_model.g.dart';

///! Current weather model
@JsonSerializable(explicitToJson: true)
class CurrentWeatherModel {
  /// [Longitude of the location && Latitude of the location]
  final Map<String, double> coord;

  /// [Weather condition codes]
  final List<Weather> weather;

  /// [Internal parameter]
  final String base;

  /// [Temperature, Pressure, Humidity, Min, Max]
  final Main main;

  /// [Visibility, meter]
  final int visibility;

  /// [Wind speed and direction]
  final Wind wind;

  /// [Cloudiness, %]
  final Clouds clouds;

  /// [Time of data calculation, unix, UTC]
  final int dt;

  /// [Internal parameter]
  final Sys sys;

  /// [Shift in seconds from UTC]
  final int timezone;

  /// [City ID]

  final int id;

  /// [City name]
  final String name;

  /// [Internal parameter]
  final int cod;

  CurrentWeatherModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherModelToJson(this);
}
