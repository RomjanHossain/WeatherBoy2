part of 'current_weather_bloc.dart';

@immutable
abstract class CurrentWeatherEvent {}

class GetCurrentWeatherEvent extends CurrentWeatherEvent {
  final double? lat;
  final double? lon;

  GetCurrentWeatherEvent({this.lat, this.lon});
}

// class GetDaysnHoursWeather extends CurrentWeatherEvent {
//   final double lat;
//   final double lon;

//   GetDaysnHoursWeather({required this.lat, required this.lon});
// }

class RefresshCurrentWeatherEvent extends CurrentWeatherEvent {
  final double lat;
  final double lon;

  RefresshCurrentWeatherEvent({required this.lat, required this.lon});
}
