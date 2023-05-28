import 'package:isar/isar.dart';

part 'weahter_db.g.dart';

@collection
class WeatherDB {
  Id id = Isar.autoIncrement;

  /// Weather condition id
  final int idx;

  /// Group of weather parameters (Rain, Snow, Extreme etc.)
  final String main;

  /// Weather condition within the group
  final String description;

  /// Weather icon id
  final String icon;

  WeatherDB(
    this.idx, {
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
}
