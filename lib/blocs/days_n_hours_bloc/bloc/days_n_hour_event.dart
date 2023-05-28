part of 'days_n_hour_bloc.dart';

@immutable
abstract class DaysNHourEvent {}

class GetDaysnHoursWeatherEvent extends DaysNHourEvent {
  final double? lat;
  final double? lon;

  GetDaysnHoursWeatherEvent({this.lat, this.lon});
}

class RefresshCurrentWeatherEvent extends DaysNHourEvent {
  final double lat;
  final double lon;

  RefresshCurrentWeatherEvent({required this.lat, required this.lon});
}
