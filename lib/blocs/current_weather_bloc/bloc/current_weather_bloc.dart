import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherboy2/data/repository/weather_repo.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
// import 'package:weatherboy2/models/days_hours_model.dart';

part 'current_weather_event.dart';
part 'current_weather_state.dart';

class CurrentWeatherBloc
    extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  final WeatherRepo weatherRepo = WeatherRepo();
  CurrentWeatherBloc() : super(CurrentWeatherInitial()) {
    // on<CurrentWeatherEvent>((event, emit) {});
    on<RefresshCurrentWeather>(
      (event, emit) {},
    );
    on<GetCurrentWeather>(
      (event, emit) async {
        // print('get curretn weather called');
        await weatherRepo
            .getCurrentWeatherData(event.lat, event.lon)
            .then((CurrentWeatherModel currentWeatherModel) {
          // print('emmiting current weather model: $currentWeatherModel');
          emit(
            CurrentWeatherLoaded(
              currentWeatherModel: currentWeatherModel,
            ),
          );
        }).catchError((e) {
          // print('error: $e');
          emit(CurrentWeatherError(message: e.toString()));
        });
      },
    );
    // on<GetDaysnHoursWeather>(
    //   (event, emit) {
    //     weatherRepo
    //         .getDaysnHoursData(event.lat, event.lon)
    //         .then((DaysnHoursMode daysnHoursMode) {
    //       emit(DaysnHoursWeatherLoaded(daysnHoursMode: daysnHoursMode));
    //     }).catchError((e) {
    //       emit(CurrentWeatherError(message: e.toString()));
    //     });
    //   },
    // );
  }
}
