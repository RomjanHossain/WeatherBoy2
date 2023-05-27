import 'package:weatherboy2/data/provider/api_provider.dart';
import 'package:weatherboy2/data/provider/db_provider.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:weatherboy2/models/days_hours_model.dart';

class WeatherRepo {
  final APIProvider apiProvider = APIProvider();
  final DBProvider dbProvider = DBProvider();

  /// get the current weather data (db/api)
  Future<CurrentWeatherModel> getCurrentWeatherData(
    double lat,
    double lon,
  ) async {
    /// check if the device is connected to the internet or not
    /// if connected then fetch the data from the API
    /// else fetch the data from the DB

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      CurrentWeatherModel _currentData =
          await dbProvider.getCurrentWeatherFromDB(lat, lon);

      /// save the data in the DB
      await dbProvider.updateCurrentWeatherInDB(_currentData);
      return _currentData;
    } else {
      CurrentWeatherModel currentWeatherModel =
          await apiProvider.getCurrentWeather(lat, lon);
      await dbProvider.insertCurrentWeatherInDB(currentWeatherModel);
      return currentWeatherModel;
    }
  }

  /// get the 5 day / 3 Hour forecast (db/api)
  Future<DaysnHoursMode> getDaysnHoursData(
    double lat,
    double lon,
  ) async {
    /// check if the device is connected to the internet or not
    /// if connected then fetch the data from the API
    /// else fetch the data from the DB

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      DaysnHoursMode _currentData = await apiProvider.getDaysnHours(lat, lon);

      /// save the data in the DB
      await dbProvider.updateDaysnHoursWeatherInDB(_currentData.list);
      return _currentData;
    } else {
      DaysnHoursMode currentWeatherModel =
          await apiProvider.getDaysnHours(lat, lon);
      await dbProvider.insertDaysnHoursWeatherInDB(currentWeatherModel.list);
      return currentWeatherModel;
    }
  }
}
