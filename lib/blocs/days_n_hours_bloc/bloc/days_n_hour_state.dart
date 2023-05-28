part of 'days_n_hour_bloc.dart';

@immutable
abstract class DaysNHourState {}

class DaysNHourInitial extends DaysNHourState {}

class DaysNHourLoading extends DaysNHourState {}

class DaysnHoursWeatherLoaded extends DaysNHourState {
  final DaysnHoursMode daysnHoursMode;

  DaysnHoursWeatherLoaded({required this.daysnHoursMode});
}

class DaysNHourError extends DaysNHourState {
  final String message;

  DaysNHourError({required this.message});
}
