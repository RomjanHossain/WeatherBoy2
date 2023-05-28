// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main2_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main2 _$Main2FromJson(Map<String, dynamic> json) => Main2(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      minTemp: (json['temp_min'] as num).toDouble(),
      maxTemp: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      seaLevel: json['sea_level'] as int,
      grndLevel: json['grnd_level'] as int,
      humidity: json['humidity'] as int,
    );

Map<String, dynamic> _$Main2ToJson(Main2 instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.minTemp,
      'temp_max': instance.maxTemp,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
    };
