/* HERE GOES ALL THE CURD OPERATIONS FOR THE API */

import 'dart:convert';

import 'package:weatherboy2/models/current_weather_model.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/utils/env.dart';
import 'package:http/http.dart' as http;

/// This class is responsible for all the CURD operations for the API
class APIProvider {
  /// Get the current weather data
  Future<CurrentWeatherModel> getCurrentWeather(double lat, double lon) async {
    String _url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$API_KEY';
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      return CurrentWeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load the current weather data');
    }
  }

  /// Get 5 day / 3 Hour forecast
  Future<DaysnHoursMode> getDaysnHours(double lat, double lon) async {
    String _url =
        'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&cnt=7&appid=$API_KEY';
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      // print('response.body: ');
      // print(response.body.toString());
      DaysnHoursMode _dh = DaysnHoursMode.fromJson(jsonDecode(response.body));
      // print('this is body -> $_dh');
      return _dh;
    } else {
      // print('error in getDaysnHours: ${response.statusCode}');
      throw Exception('Failed to load the 5 day / 3 Hour forecast');
    }
  }
}
