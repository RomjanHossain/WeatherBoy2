import 'package:sqflite/sqflite.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';

/// This class is responsible for all the CURD operations for the DB
class DBProvider {
  Database? db;

  // Future open(String path){
  //   return openDatabase(
  //     path,
  //     version: 1,
  //     onCreate: (db, version) async {
  //       await db.execute('''
  //         CREATE TABLE IF NOT EXISTS users(
  //           id INTEGER PRIMARY KEY AUTOINCREMENT,
  //           name TEXT,
  //           email TEXT,
  //           password TEXT
  //         )
  //       ''');
  //     },
  //     onOpen: (db) async {
  //       this.db = db;
  //     }
  //   );
  // }
  ///* Get the current weather from the DB
  Future<CurrentWeatherModel> getCurrentWeatherFromDB(
      double lat, double lon) async {
    final List<Map<String, dynamic>> maps = await db!.query(
      'weather',
      where: 'lat = ? AND lon = ?',
      whereArgs: [lat, lon],
    );
    if (maps.isNotEmpty) {
      return CurrentWeatherModel.fromJson(maps.first);
    } else {
      throw Exception('No data found');
    }
  }

  ///* Update the current weather in the DB
  Future<void> updateCurrentWeatherInDB(
      CurrentWeatherModel currentWeatherModel) async {
    await db!.update(
      'weather',
      currentWeatherModel.toJson(),
      where: 'lat = ? AND lon = ?',
      whereArgs: [
        currentWeatherModel.coord.lat,
        currentWeatherModel.coord.lon,
      ],
    );
  }

  ///* Insert the current weather in the DB
  Future<void> insertCurrentWeatherInDB(
      CurrentWeatherModel currentWeatherModel) async {
    await db!.insert(
      'weather',
      currentWeatherModel.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  ///* Get the days and hours weather from the DB
  Future<DaysnHoursMode> getDaysnHoursWeatherFromDB(
      double lat, double lon) async {
    final List<Map<String, dynamic>> maps = await db!.query(
      'daysnHours',
      where: 'lat = ? AND lon = ?',
      whereArgs: [lat, lon],
    );
    if (maps.isNotEmpty) {
      return DaysnHoursMode.fromJson(maps.first);
    } else {
      throw Exception('No data found');
    }
  }

  ///* Update the days and hours weather in the DB
  Future<void> updateDaysnHoursWeatherInDB(
      List<Map<String, dynamic>> daysnHoursWeatherModel) async {
    await db!.update(
      'daysnHours',
      daysnHoursWeatherModel.first,
      where: 'lat = ? AND lon = ?',
      whereArgs: [
        daysnHoursWeatherModel.first['lat'],
        daysnHoursWeatherModel.first['lon'],
      ],
    );
  }

  ///* Insert the days and hours weather in the DB
  Future<void> insertDaysnHoursWeatherInDB(
      List<Map<String, dynamic>> daysnHoursWeatherModel) async {
    await db!.insert(
      'daysnHours',
      daysnHoursWeatherModel.first,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  ///* Save the coordinates in the DB
  Future<void> saveCoordinatesInDB(double lat, double lon) async {
    await db!.insert(
      'coordinates',
      {
        'lat': lat,
        'lon': lon,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  ///* Get the coordinates from the DB
  Future<Map<String, dynamic>> getCoordinatesFromDB() async {
    final List<Map<String, dynamic>> maps = await db!.query(
      'coordinates',
    );
    if (maps.isNotEmpty) {
      return maps.first;
    } else {
      throw Exception('No data found');
    }
  }

  ///* update the coordinates in the DB
  Future<void> updateCoordinatesInDB(double lat, double lon) async {
    await db!.update(
      'coordinates',
      {
        'lat': lat,
        'lon': lon,
      },
    );
  }
}
