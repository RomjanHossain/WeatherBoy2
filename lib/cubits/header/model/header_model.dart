class HeaderModel {
  final double kelvin;
  final int humidity;
  final String windSpeed;
  final int pressure;
  final String title;
  final int code;
  final String status;

  HeaderModel({
    required this.status,
    required this.kelvin,
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
    required this.title,
    required this.code,
  });
}
