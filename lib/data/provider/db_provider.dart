import 'package:sqflite/sqflite.dart';
import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:weatherboy2/models/days_hour_list_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';

/// This class is responsible for all the CURD operations for the DB
class DBProvider {
  Database? db;

  /// Initialize the DB and create the tables
  /// if the tables are not present

  Future<void> initDB() async {
    db = await openDatabase(
      'weather.db',
      version: 1,
      onCreate: (db, version) async {
        // create the CurrentWeatherModel values in the DB
        await db.execute('''
          CREATE TABLE weather(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            coord TEXT,
            weather TEXT,
            base TEXT,
            main TEXT,
            visibility INTEGER,
            wind TEXT,
            clouds TEXT,
            dt INTEGER,
            sys TEXT,
            timezone INTEGER,
            id INTEGER,
            name TEXT,
            cod INTEGER
          )
          
          ''');
      },
    );
  }

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
    /// check if the data is already present in the DB
    /// if present then update the data
    /// else insert the data

    if (await isCurrentWeatherPresentInDB(
      currentWeatherModel.coord.lat,
      currentWeatherModel.coord.lon,
    )) {
      // await updateCurrentWeatherInDB(currentWeatherModel);
      await db!.update(
        'weather',
        currentWeatherModel.toJson(),
        where: 'lat = ? AND lon = ?',
        whereArgs: [
          currentWeatherModel.coord.lat,
          currentWeatherModel.coord.lon,
        ],
      );
    } else {
      await insertCurrentWeatherInDB(currentWeatherModel);
    }
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
      List<DaysnHoursList> daysnHoursWeatherModel) async {
    /// check if the data is already present in the DB
    /// if present then update the data
    /// else insert the data
    // if (await isDaysnHoursWeatherPresentInDB(
    //   daysnHoursWeatherModel.first.,
    //   daysnHoursWeatherModel.first.lon,
    // )) {
    /// update all the data
    for (var i = 0; i < daysnHoursWeatherModel.length; i++) {
      await db!.update(
        'daysnHours',
        daysnHoursWeatherModel[i].toJson(),
      );
    }
  }
  // else {
  //   for (var i = 0; i < daysnHoursWeatherModel.length; i++) {
  //     await insertDaysnHoursWeatherInDB(daysnHoursWeatherModel[i]);
  //   }
  //   // await insertDaysnHoursWeatherInDB(daysnHoursWeatherModel.first.toJson());
  // }

  ///* Insert the days and hours weather in the DB
  Future<void> insertDaysnHoursWeatherInDB(
      List<DaysnHoursList> daysnHoursWeatherModel) async {
    // await db!.insert(
    //   'daysnHours',
    //   daysnHoursWeatherModel.toJson(),
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );
    for (var i = 0; i < daysnHoursWeatherModel.length; i++) {
      await db!.insert(
        'daysnHours',
        daysnHoursWeatherModel[i].toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
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

  ///* check if the current weather is present in the DB
  Future<bool> isCurrentWeatherPresentInDB(double lat, double lon) async {
    final List<Map<String, dynamic>> maps = await db!.query(
      'weather',
      where: 'lat = ? AND lon = ?',
      whereArgs: [lat, lon],
    );
    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  ///* check if the days and hours weather is present in the DB
  // Future<bool> isDaysnHoursWeatherPresentInDB(double lat, double lon) async {
  //   final List<Map<String, dynamic>> maps = await db!.query(
  //     'daysnHours',
  //     where: 'lat = ? AND lon = ?',
  //     whereArgs: [lat, lon],
  //   );
  //   if (maps.isNotEmpty) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  ///* close the DB
  Future<void> closeDB() async {
    await db!.close();
  }
}
