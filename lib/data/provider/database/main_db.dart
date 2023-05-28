import 'package:isar/isar.dart';

part 'main_db.g.dart';

@collection
class MainDB {
  Id id = Isar.autoIncrement;

  /// Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  final double temp;

  /// Temperature. This temperature parameter accounts for the human perception of weather. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  final double feelsLike;

  /// Minimum temperature at the moment of calculation. This is minimal currently observed temperature (within large megalopolises and urban areas). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.

  final double tempMin;

  /// Maximum temperature at the moment of calculation. This is maximal currently observed temperature (within large megalopolises and urban areas). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.

  final double tempMax;

  /// Atmospheric pressure on the sea level, hPa
  final int pressure;

  /// Humidity, %
  final int humidity;

  /// Atmospheric pressure on the sea level, hPa
  final int? seaLevel;

  /// Atmospheric pressure on the ground level, hPa
  final int? grndLevel;

  MainDB({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });
}
