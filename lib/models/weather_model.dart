import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

/// Weather model class
@JsonSerializable()
class Weather {
  /// Weather condition id
  final int id;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  final String main;

  /// Weather condition within the group
  final String description;

  /// Weather icon id
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
