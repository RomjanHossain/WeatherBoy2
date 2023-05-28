import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherboy2/data/repository/weather_repo.dart';
import 'package:weatherboy2/models/days_hours_model.dart';

part 'days_n_hour_event.dart';
part 'days_n_hour_state.dart';

class DaysNHourBloc extends Bloc<DaysNHourEvent, DaysNHourState> {
  final WeatherRepo weatherRepo = WeatherRepo();

  DaysNHourBloc() : super(DaysNHourInitial()) {
    on<DaysNHourEvent>((event, emit) {});

    on<GetDaysnHoursWeatherEvent>(
      (event, emit) async {
        await weatherRepo.getDaysnHoursData(event.lat, event.lon).then(
          (DaysnHoursMode daysnHoursMode) {
            // print('emmiting days n hours model: $daysnHoursMode');
            emit(
              DaysnHoursWeatherLoaded(
                daysnHoursMode: daysnHoursMode,
              ),
            );
          },
        ).catchError(
          (e) {
            // print('error in days n hours bloc: $e');
            emit(
              DaysNHourError(
                message: e.toString(),
              ),
            );
          },
        );
      },
    );
  }
}
