import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherboy2/data/repository/weather_repo.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';

part 'current_weather_event.dart';
part 'current_weather_state.dart';

class CurrentWeatherBloc
    extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  final WeatherRepo weatherRepo = WeatherRepo();
  CurrentWeatherBloc() : super(CurrentWeatherInitial()) {
    // on<CurrentWeatherEvent>((event, emit) {});
    on<RefresshCurrentWeather>(
      (event, emit) {
        // emit(CurrentWeatherLoading());
        // weatherRepo
        //     .getCurrentWeather(event.lat, event.lon)
        //     .then((currentWeatherModel) {
        //   emit(CurrentWeatherLoaded(
        //       currentWeatherModel: currentWeatherModel));
        // }).catchError((e) {
        //   emit(CurrentWeatherError(message: e.toString()));
        // });
      },
    );
    on<GetCurrentWeather>(
      (event, emit) {
        weatherRepo
            .getCurrentWeatherData(event.lat, event.lon)
            .then((CurrentWeatherModel currentWeatherModel) {
          emit(CurrentWeatherLoaded(currentWeatherModel: currentWeatherModel));
        }).catchError((e) {
          emit(CurrentWeatherError(message: e.toString()));
        });
      },
    );
    on<GetDaysnHoursWeather>(
      (event, emit) {
        weatherRepo
            .getDaysnHoursData(event.lat, event.lon)
            .then((DaysnHoursMode daysnHoursMode) {
          emit(DaysnHoursWeatherLoaded(daysnHoursMode: daysnHoursMode));
        }).catchError((e) {
          emit(CurrentWeatherError(message: e.toString()));
        });
      },
    );
  }
}
