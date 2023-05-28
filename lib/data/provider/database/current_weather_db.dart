import 'package:isar/isar.dart';

part 'current_weather_db.g.dart';

///! Current weather model
@collection
class CurrentWeatherDB {
  Id id = Isar.autoIncrement;

  /// [Internal parameter]
  final String base;

  /// [Visibility, meter]
  final int visibility;

  /// [Time of data calculation, unix, UTC]
  final int dt;

  /// [Shift in seconds from UTC]
  final int timezone;

  /// [City name]
  final String name;

  /// [Internal parameter]
  final int cod;

  CurrentWeatherDB({
    required this.base,
    required this.visibility,
    required this.dt,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });
}
