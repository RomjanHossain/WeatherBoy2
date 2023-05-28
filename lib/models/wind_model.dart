import 'package:json_annotation/json_annotation.dart';

part 'wind_model.g.dart';

/// Model class for wind data
@JsonSerializable()
class Wind {
  /// Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
  final double speed;

  /// Wind direction, degrees (meteorological)
  final int deg;

  /// Wind gust. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour
  final double? gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
  Map<String, dynamic> toJson() => _$WindToJson(this);
}
