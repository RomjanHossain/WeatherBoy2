import 'package:json_annotation/json_annotation.dart';
import 'package:weatherboy2/models/days_hour_list_model.dart';

import 'city_model.dart';

part 'days_hours_model.g.dart';

@JsonSerializable()
class DaysnHoursMode {
  final String cod;
  final int message;
  final int cnt;
  final List<DaysnHoursList> list;
  final City city;

  DaysnHoursMode(
      {required this.cod,
      required this.message,
      required this.cnt,
      required this.list,
      required this.city});

  factory DaysnHoursMode.fromJson(Map<String, dynamic> json) =>
      _$DaysnHoursModeFromJson(json);
  Map<String, dynamic> toJson() => _$DaysnHoursModeToJson(this);
}
