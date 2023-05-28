import 'package:json_annotation/json_annotation.dart';
import 'package:weatherboy2/models/clouds_model.dart';
import 'package:weatherboy2/models/main2_model.dart';
import 'package:weatherboy2/models/rain_model.dart';
import 'package:weatherboy2/models/sys2_model.dart';
import 'package:weatherboy2/models/weather_model.dart';
import 'package:weatherboy2/models/wind_model.dart';

part 'days_hour_list_model.g.dart';

@JsonSerializable()
class DaysnHoursList {
  final int dt;
  final Main2 main;
  final List<Weather> weather;
  final Clouds clouds;
  final Wind wind;
  final int visibility;
  final double pop;
  final Rain? rain;
  final Sys2 sys;
  @JsonKey(name: 'dt_txt')
  final String dtTxt;

  DaysnHoursList(
      {required this.dt,
      required this.main,
      required this.weather,
      required this.clouds,
      required this.wind,
      required this.visibility,
      required this.pop,
      required this.rain,
      required this.sys,
      required this.dtTxt});

  factory DaysnHoursList.fromJson(Map<String, dynamic> json) =>
      _$DaysnHoursListFromJson(json);
  Map<String, dynamic> toJson() => _$DaysnHoursListToJson(this);
}
