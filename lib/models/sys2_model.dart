import 'package:json_annotation/json_annotation.dart';

part 'sys2_model.g.dart';

@JsonSerializable()
class Sys2 {
  final String pod;

  Sys2({required this.pod});

  factory Sys2.fromJson(Map<String, dynamic> json) => _$Sys2FromJson(json);
  Map<String, dynamic> toJson() => _$Sys2ToJson(this);
}
