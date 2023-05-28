import 'package:geolocator/geolocator.dart';
import 'package:weatherboy2/data/provider/api_provider.dart';
import 'package:weatherboy2/data/provider/current_loc_provider.dart';
import 'package:weatherboy2/data/provider/db_provider.dart';
import 'package:weatherboy2/models/city_model.dart';
import 'package:weatherboy2/models/clouds_model.dart';
import 'package:weatherboy2/models/coord_model.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:weatherboy2/models/days_hour_list_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/models/main2_model.dart';
import 'package:weatherboy2/models/main_model.dart';
import 'package:weatherboy2/models/rain_model.dart';
import 'package:weatherboy2/models/sys2_model.dart';
import 'package:weatherboy2/models/sys_model.dart';
import 'package:weatherboy2/models/weather_model.dart';
import 'package:weatherboy2/models/wind_model.dart';

class WeatherRepo {
  final APIProvider apiProvider = APIProvider();
  final DBProvider dbProvider = DBProvider();
  final LocationProvider locationProvider = LocationProvider();
  // final DBProvider dbProvider = DBProvider();

  /// get the current weather data (db/api)
  Future<CurrentWeatherModel> getCurrentWeatherData(
    double? lat,
    double? lon,
  ) async {
    /// check if the device is connected to the internet or not
    /// if connected then fetch the data from the API
    /// else fetch the data from the DB

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      /// get the data from the DB
      CurrentWeatherModel? _cwm = await dbProvider.getCurrentWeather();
      return _cwm ?? fakeData;
    } else {
      /// get current location
      Position _position = await locationProvider.currentPosition();
      CurrentWeatherModel currentWeatherModel =
          await apiProvider.getCurrentWeather(
              lat ?? _position.latitude, lon ?? _position.longitude);
      // print('returring api data');
      // await dbProvider.insertCurrentWeatherInDB(currentWeatherModel);
      return currentWeatherModel;
    }
  }

  /// get the 5 day / 3 Hour forecast (db/api)
  Future<DaysnHoursMode> getDaysnHoursData(
    double? lat,
    double? lon,
  ) async {
    /// check if the device is connected to the internet or not
    /// if connected then fetch the data from the API
    /// else fetch the data from the DB

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // print('connectivity is none');
      // DaysnHoursMode _currentData = await apiProvider.getDaysnHours(lat, lon);

      /// save the data in the DB
      // await dbProvider.updateDaysnHoursWeatherInDB(_currentData.list);
      return fakedayshourdata;
    } else {
      /// get current location
      Position _position = await locationProvider.currentPosition();
      // print('connectivity is not none');
      DaysnHoursMode currentWeatherModel = await apiProvider.getDaysnHours(
          lat ?? _position.latitude, lon ?? _position.longitude);
      // print('returring days n hour api data $currentWeatherModel');
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

DaysnHoursMode fakedayshourdata = DaysnHoursMode(
  cod: 'cod',
  message: 23,
  cnt: 23,
  list: [
    DaysnHoursList(
      dt: 23,
      main: Main2(
        temp: 23.2,
        feelsLike: 23.3,
        pressure: 32,
        humidity: 32,
        seaLevel: 32,
        grndLevel: 32,
        maxTemp: 23,
        minTemp: 23,
      ),
      weather: [
        Weather(
          id: 1,
          main: 'main',
          description: 'description',
          icon: 'icon',
        )
      ],
      clouds: Clouds(all: 23),
      wind: Wind(speed: 23, deg: 23, gust: 23),
      visibility: 23,
      pop: 2,
      rain: Rain(h3: 23),
      sys: Sys2(pod: 'pod'),
      dtTxt: 'sdf',
    )
  ],
  city: City(
    id: 23,
    name: 'name',
    coord: Coord(lat: 23.00, lon: 22.00),
    country: 'country',
    population: 23,
    timezone: 23,
    sunrise: 23,
    sunset: 23,
  ),
);
