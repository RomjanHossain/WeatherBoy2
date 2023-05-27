import 'package:json_annotation/json_annotation.dart';

part 'main_model.g.dart';

/*

      feelsLike: json['feels_like'],
      tempMin: json['temp_min'],
      tempMax: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level'],



*/
/// the main model [NOTE: this "main" name is from the API]
@JsonSerializable()
class Main {
  /// Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  final double temp;

  /// Temperature. This temperature parameter accounts for the human perception of weather. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  @JsonKey(name: 'feels_like')
  final double feelsLike;

  /// Minimum temperature at the moment of calculation. This is minimal currently observed temperature (within large megalopolises and urban areas). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  @JsonKey(name: 'temp_min')
  final double tempMin;

  /// Maximum temperature at the moment of calculation. This is maximal currently observed temperature (within large megalopolises and urban areas). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
  @JsonKey(name: 'temp_max')
  final double tempMax;

  /// Atmospheric pressure on the sea level, hPa
  final int pressure;

  /// Humidity, %
  final int humidity;

  /// Atmospheric pressure on the sea level, hPa
  @JsonKey(name: 'sea_level')
  final int? seaLevel;

  /// Atmospheric pressure on the ground level, hPa
  @JsonKey(name: 'grnd_level')
  final int? grndLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  /// A necessary factory constructor for creating a new Main instance
  /// from a map. Pass the map to the generated `_$MainFromJson()` constructor.
  /// The constructor is named after the source class, in this case, Main.
  /// [NOTE: this "main" name is from the API]
  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$MainToJson`.
  /// [NOTE: this "main" name is from the API]

  Map<String, dynamic> toJson() => _$MainToJson(this);
}
