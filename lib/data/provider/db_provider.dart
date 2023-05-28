import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weatherboy2/data/provider/database/cloud_db.dart';
import 'package:weatherboy2/data/provider/database/crood_db.dart';
import 'package:weatherboy2/data/provider/database/current_weather_db.dart';
import 'package:weatherboy2/data/provider/database/main_db.dart';
import 'package:weatherboy2/data/provider/database/sys_db.dart';
import 'package:weatherboy2/data/provider/database/weahter_db.dart';
import 'package:weatherboy2/data/provider/database/wind_db.dart';
import 'package:weatherboy2/models/clouds_model.dart';
import 'package:weatherboy2/models/coord_model.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/models/main_model.dart';
import 'package:weatherboy2/models/sys_model.dart';
import 'package:weatherboy2/models/weather_model.dart';
import 'package:weatherboy2/models/wind_model.dart';

class DBProvider {
  /// set the coord in the db
  Future<void> setCoord(double lat, double lon) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [CoordDBSchema],
      directory: dir.path,
    );
    await isar.writeTxn(() async {
      final _cdb = CoordDB(lat: lat, lon: lon);
      // await isar.coord.put(CoordDB(lat, lon));
      await isar.coordDBs.put(_cdb);
    });

    /// close the db
    await isar.close();
  }

  /// get the coord frmo the db
  Future<CoordDB?> getCoord() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [CoordDBSchema],
      directory: dir.path,
    );
    final _coord = await isar.coordDBs.get(1);
    await isar.close();
    return _coord;
  }

  /// get the current weather in the DB
  Future<CurrentWeatherModel?> getCurrentWeather() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        CurrentWeatherDBSchema,
        CoordDBSchema,
        WeatherDBSchema,
        MainDBSchema,
        WindDBSchema,
        CloudsDBSchema,
        SysDBSchema,
      ],
      directory: dir.path,
    );

    final CurrentWeatherDB? _currentWeather =
        await isar.currentWeatherDBs.get(1);
    final CoordDB? _coord = await isar.coordDBs.get(1);
    final WeatherDB? _weather = await isar.weatherDBs.get(1);
    final MainDB? _main = await isar.mainDBs.get(1);
    final WindDB? _wind = await isar.windDBs.get(1);
    final CloudsDB? _clouds = await isar.cloudsDBs.get(1);
    final SysDB? _sys = await isar.sysDBs.get(1);

    CurrentWeatherModel _currentWeatherModel = CurrentWeatherModel(
      coord: Coord(lat: _coord!.lat, lon: _coord.lon),
      weather: [
        Weather(
          id: _weather?.id ?? 0,
          main: _weather?.main ?? '',
          description: _weather?.description ?? '',
          icon: _weather?.icon ?? '',
        ),
      ],
      base: _currentWeather?.base ?? '',
      main: Main(
        temp: _main?.temp ?? 0.0,
        feelsLike: _main?.feelsLike ?? 0.0,
        tempMin: _main?.tempMin ?? 0.0,
        tempMax: _main?.tempMax ?? 0.0,
        pressure: _main?.pressure ?? 0,
        humidity: _main?.humidity ?? 0,
        seaLevel: _main?.seaLevel ?? 0,
        grndLevel: _main?.grndLevel ?? 0,
      ),
      visibility: _currentWeather?.visibility ?? 0,
      wind: Wind(
        speed: _wind?.speed ?? 0.0,
        deg: _wind?.deg ?? 0,
        gust: _wind?.gust ?? 0.0,
      ),
      clouds: Clouds(all: _clouds!.all),
      dt: _currentWeather?.dt ?? 0,
      sys: Sys(
        type: _sys?.type ?? 0,
        id: _sys?.id ?? 0,
        country: _sys?.country ?? '',
        sunrise: _sys?.sunrise ?? 0,
        sunset: _sys?.sunset ?? 0,
      ),
      timezone: _currentWeather?.timezone ?? 0,
      id: _currentWeather?.id ?? 0,
      name: _currentWeather?.name ?? '',
      cod: _currentWeather?.cod ?? 0,
    );

    /// close the data after getting the data
    await isar.close();
    return _currentWeatherModel;
  }

  /// set the current weather in the DB
  Future<void> setTheCurrentWeather(CurrentWeatherModel cwm) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        CurrentWeatherDBSchema,
        CoordDBSchema,
        WeatherDBSchema,
        MainDBSchema,
        WindDBSchema,
        CloudsDBSchema,
        SysDBSchema,
      ],
      directory: dir.path,
    );

    await isar.writeTxn(() async {
      final _currentWeatherDB = CurrentWeatherDB(
        base: cwm.base,
        visibility: cwm.visibility,
        dt: cwm.dt,
        timezone: cwm.timezone,
        id: cwm.id,
        name: cwm.name,
        cod: cwm.cod,
      );
      final _coordDB = CoordDB(
        lat: cwm.coord.lat,
        lon: cwm.coord.lon,
      );
      final _weatherDB = WeatherDB(
        cwm.weather.first.id,
        id: 1,
        main: cwm.weather[0].main,
        description: cwm.weather[0].description,
        icon: cwm.weather[0].icon,
      );
      final _mainDB = MainDB(
        temp: cwm.main.temp,
        feelsLike: cwm.main.feelsLike,
        tempMin: cwm.main.tempMin,
        tempMax: cwm.main.tempMax,
        pressure: cwm.main.pressure,
        humidity: cwm.main.humidity,
        seaLevel: cwm.main.seaLevel,
        grndLevel: cwm.main.grndLevel,
      );
      final _windDB = WindDB(
        speed: cwm.wind.speed,
        deg: cwm.wind.deg,
        gust: cwm.wind.gust,
      );
      final _cloudsDB = CloudsDB(
        all: cwm.clouds.all,
      );
      final _sysDB = SysDB(
        cwm.sys.id,
        type: cwm.sys.type,
        id: 1,
        country: cwm.sys.country,
        sunrise: cwm.sys.sunrise,
        sunset: cwm.sys.sunset,
      );

      await isar.currentWeatherDBs.put(_currentWeatherDB);
      await isar.coordDBs.put(_coordDB);
      await isar.weatherDBs.put(_weatherDB);
      await isar.mainDBs.put(_mainDB);
      await isar.windDBs.put(_windDB);
      await isar.cloudsDBs.put(_cloudsDB);
      await isar.sysDBs.put(_sysDB);
    });

    await isar.close();
  }

  /// get the hourly weather in the DB
  // Future<DaysnHoursMode> getHourWeatherDB() async {
  //   final dir = await getApplicationDocumentsDirectory();
  //   final isar = await Isar.open(
  //     [],
  //     directory: dir.path,
  //   );

  //   await isar.close();
  // }
}
