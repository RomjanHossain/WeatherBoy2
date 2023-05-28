import 'package:json_annotation/json_annotation.dart';

part 'clouds_model.g.dart';

/// Clouds model class
@JsonSerializable()
class Clouds {
  /// Cloudiness, %
  final int all;

  Clouds({
    required this.all,
  });

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}
