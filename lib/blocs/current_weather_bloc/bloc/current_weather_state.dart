part of 'current_weather_bloc.dart';

@immutable
abstract class CurrentWeatherState {}

class CurrentWeatherInitial extends CurrentWeatherState {}

class CurrentWeatherLoading extends CurrentWeatherState {}

class CurrentWeatherLoaded extends CurrentWeatherState {
  final CurrentWeatherModel currentWeatherModel;

  CurrentWeatherLoaded({required this.currentWeatherModel});
}

// class DaysnHoursWeatherLoaded extends CurrentWeatherState {
//   final DaysnHoursMode daysnHoursMode;

//   DaysnHoursWeatherLoaded({required this.daysnHoursMode});
// }

class CurrentWeatherError extends CurrentWeatherState {
  final String message;

  CurrentWeatherError({required this.message});
}
