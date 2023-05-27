import 'package:isar/isar.dart';

part 'wind_db.g.dart';

@collection
class WindDB {
  Id id = Isar.autoIncrement;

  /// Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
  final double speed;

  /// Wind direction, degrees (meteorological)
  final int deg;

  /// Wind gust. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour
  final double? gust;

  WindDB({
    required this.speed,
    required this.deg,
    required this.gust,
  });
}
