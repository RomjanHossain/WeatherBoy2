import 'package:isar/isar.dart';

part 'sys_db.g.dart';

@collection
class SysDB {
  Id id = Isar.autoIncrement;

  /// Internal parameter
  final int type;

  /// Internal parameter
  final int idx;

  /// Country code (GB, JP etc.)
  final String country;

  /// Sunrise time, unix, UTC
  final int sunrise;

  /// Sunset time, unix, UTC
  final int sunset;

  SysDB(
    this.idx, {
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
}
