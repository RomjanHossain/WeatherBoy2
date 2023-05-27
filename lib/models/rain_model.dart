import 'package:json_annotation/json_annotation.dart';

part 'rain_model.g.dart';

@JsonSerializable()
class Rain {
  final double h3;

  Rain({required this.h3});

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
  Map<String, dynamic> toJson() => _$RainToJson(this);
}
