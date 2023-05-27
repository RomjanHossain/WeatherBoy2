import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherboy2/blocs/current_weather_bloc/bloc/current_weather_bloc.dart';
import 'package:weatherboy2/blocs/days_n_hours_bloc/bloc/days_n_hour_bloc.dart';
import 'package:weatherboy2/screens/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentWeatherBloc>(
          create: (context) => CurrentWeatherBloc()
            ..add(
              GetCurrentWeather(lat: 28.7041, lon: 77.1025),
            ),
        ),
        BlocProvider<DaysNHourBloc>(
          create: (context) => DaysNHourBloc()
            ..add(
              // GetCurrentWeather(lat: 28.7041, lon: 77.1025),
              GetDaysnHoursWeatherEvent(lat: 28.7041, lon: 77.1025),
            ),
        ),
        // DaysNHourBloc
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WeatherBoy 2 Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepOrange,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        home: const HomePage(),
      ),
    );
  }
}
