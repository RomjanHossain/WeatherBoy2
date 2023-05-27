import 'package:flutter/foundation.dart';

@immutable
class WeatherConditionModel {
  final int code;
  final String description;
  final String main;

  const WeatherConditionModel({
    required this.code,
    required this.description,
    required this.main,
  });

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      WeatherConditionModel(
        code: json['code'] as int,
        description: json['description'] as String,
        main: json['main'] as String,
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'description': description,
        'main': main,
      };
}
