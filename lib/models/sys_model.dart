import 'package:json_annotation/json_annotation.dart';

part 'sys_model.g.dart';

/// the sys model
@JsonSerializable()
class Sys {
  /// Internal parameter
  final int type;

  /// Internal parameter
  final int id;

  /// Country code (GB, JP etc.)
  final String country;

  /// Sunrise time, unix, UTC
  final int sunrise;

  /// Sunset time, unix, UTC
  final int sunset;

  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}
