import 'package:weatherboy2/data/provider/api_provider.dart';
import 'package:weatherboy2/data/provider/db_provider.dart';
import 'package:weatherboy2/models/clouds_model.dart';
import 'package:weatherboy2/models/coord_model.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/models/main_model.dart';
import 'package:weatherboy2/models/sys_model.dart';
import 'package:weatherboy2/models/weather_model.dart';
import 'package:weatherboy2/models/wind_model.dart';

class WeatherRepo {
  final APIProvider apiProvider = APIProvider();
  // final DBProvider dbProvider = DBProvider();

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
      // CurrentWeatherModel _currentData =
      // await dbProvider.getCurrentWeatherFromDB(lat, lon);

      /// save the data in the DB
      // await dbProvider.updateCurrentWeatherInDB(_currentData);
      print('returring fake data');
      return fakeData;
    } else {
      CurrentWeatherModel currentWeatherModel =
          await apiProvider.getCurrentWeather(lat, lon);
      print('returring api data');
      // await dbProvider.insertCurrentWeatherInDB(currentWeatherModel);
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
      // await dbProvider.updateDaysnHoursWeatherInDB(_currentData.list);
      return _currentData;
    } else {
      DaysnHoursMode currentWeatherModel =
          await apiProvider.getDaysnHours(lat, lon);
      // await dbProvider.insertDaysnHoursWeatherInDB(currentWeatherModel.list);
      return currentWeatherModel;
    }
  }
}

CurrentWeatherModel fakeData = CurrentWeatherModel(
  coord: Coord(lat: 23.00, lon: 22.00),
  weather: [
    Weather(
      id: 1,
      main: 'main',
      description: 'description',
      icon: 'icon',
    )
  ],
  base: 'base',
  main: Main(
      temp: 23.2,
      feelsLike: 23.3,
      tempMin: 23.2,
      tempMax: 23.2,
      pressure: 32,
      humidity: 32,
      seaLevel: 32,
      grndLevel: 32),
  visibility: 23,
  wind: Wind(speed: 23, deg: 23, gust: 23),
  clouds: Clouds(all: 23),
  dt: 23,
  sys: Sys(type: 23, id: 23, country: 'country', sunrise: 23, sunset: 23),
  timezone: 234,
  id: 23,
  name: 'name',
  cod: 23,
);
