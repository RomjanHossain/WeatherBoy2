part of 'days_n_hour_bloc.dart';

@immutable
abstract class DaysNHourEvent {}

class GetDaysnHoursWeatherEvent extends DaysNHourEvent {
  final double lat;
  final double lon;

  GetDaysnHoursWeatherEvent({required this.lat, required this.lon});
}

class RefresshCurrentWeatherEvent extends DaysNHourEvent {
  final double lat;
  final double lon;

  RefresshCurrentWeatherEvent({required this.lat, required this.lon});
}
