import 'package:json_annotation/json_annotation.dart';

part 'main2_model.g.dart';

@JsonSerializable()
class Main2 {
  final double temp;
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @JsonKey(name: 'temp_min')
  final double minTemp;
  @JsonKey(name: 'temp_max')
  final double maxTemp;
  final int pressure;
  @JsonKey(name: 'sea_level')
  final int seaLevel;
  @JsonKey(name: 'grnd_level')
  final int grndLevel;
  final int humidity;
  // final double temp_kf;

  Main2({
    required this.temp,
    required this.feelsLike,
    required this.minTemp,
    required this.maxTemp,
    required this.pressure,
    required this.seaLevel,
    required this.grndLevel,
    required this.humidity,
    // required this.temp_kf,
  });

  factory Main2.fromJson(Map<String, dynamic> json) => _$Main2FromJson(json);
  Map<String, dynamic> toJson() => _$Main2ToJson(this);
}
