part of 'current_weather_bloc.dart';

@immutable
abstract class CurrentWeatherEvent {}

class GetCurrentWeather extends CurrentWeatherEvent {
  final double lat;
  final double lon;

  GetCurrentWeather({required this.lat, required this.lon});
}

// class GetDaysnHoursWeather extends CurrentWeatherEvent {
//   final double lat;
//   final double lon;

//   GetDaysnHoursWeather({required this.lat, required this.lon});
// }

class RefresshCurrentWeather extends CurrentWeatherEvent {
  final double lat;
  final double lon;

  RefresshCurrentWeather({required this.lat, required this.lon});
}
