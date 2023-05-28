// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DaysnHoursMode _$DaysnHoursModeFromJson(Map<String, dynamic> json) =>
    DaysnHoursMode(
      cod: json['cod'] as String,
      message: json['message'] as int,
      cnt: json['cnt'] as int,
      list: (json['list'] as List<dynamic>)
          .map((e) => DaysnHoursList.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DaysnHoursModeToJson(DaysnHoursMode instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };
