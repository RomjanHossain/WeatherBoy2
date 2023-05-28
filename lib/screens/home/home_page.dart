import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherboy2/blocs/days_n_hours_bloc/bloc/days_n_hour_bloc.dart';
import 'package:weatherboy2/cubits/conversion/cubit/unit_conversion_cubit.dart';
import 'package:weatherboy2/data/provider/api_provider.dart';
import 'package:weatherboy2/data/provider/current_loc_provider.dart';
import 'package:weatherboy2/data/repository/weather_repo.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/screens/forcasts/forcast.dart';
import 'package:weatherboy2/screens/home/components/card_home.dart';
import 'package:weatherboy2/screens/home/components/gethe_image.dart';
import 'package:weatherboy2/screens/home/widgets/cloud_over_text.dart';
import 'package:weatherboy2/utils/consts_.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../blocs/current_weather_bloc/bloc/current_weather_bloc.dart';

/// home page for the app
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final LocationProvider _locationProvider = LocationProvider();

  @override
  Widget build(BuildContext context) {
    // print()
    return BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                title: state is CurrentWeatherLoaded
                    ? Text(state.currentWeatherModel.name)
                    : const Text('City Name'),
                centerTitle: true,
                actions: [
                  // refresh
                  IconButton(
                    onPressed: () async {
                      // print(DateTime.now());
                      context
                          .read<CurrentWeatherBloc>()
                          .add(GetCurrentWeatherEvent());
                    },
                    icon: const Icon(Icons.refresh),
                  ),

                  // // search
                  // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  // // switch dark/light mode
                  // Switch(value: true, onChanged: (bool v) {}),
                ],
              ),
              body: ListView(
                children: [
                  height20(),
                  // height20(),
                  Center(
                    // child: Text(),
                    child: state is CurrentWeatherLoaded
                        ? Text(
                            state.currentWeatherModel.weather.first.main,
                            style: Theme.of(context).textTheme.headlineLarge,
                          )
                            .animate()
                            .fade(
                              duration: 200.ms,
                            )
                            .then()
                            .scale(
                              duration: 800.ms,
                              curve: Curves.easeInOutCubic,
                            )
                            .shimmer(
                              duration: 1000.ms,
                            )
                        : const Text('Mostly Sunny'),
                  ),

                  /// cloud over text
                  const CloudOverText(),
                  height20(),

                  /// date and time
                  Text(
                    // 'Sunday 28 May | 10:00 PM',
                    DateFormat('EEEE d MMM | HH:mm a').format(DateTime.now()),
                    textAlign: TextAlign.center,
                  ),

                  /// simple card for temperature
                  BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
                    builder: (context, state) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        margin: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const CardHome(
                                icon: Icon(Icons.wb_sunny),
                                subTitle: 'percitipition',
                                title: '10%',
                              ).animate().slideX(
                                    duration: 800.ms,
                                    delay: 100.ms,
                                    curve: Curves.easeInOutCubic,
                                  ),
                              CardHome(
                                icon: const Icon(Icons.wb_twighlight),
                                subTitle: 'humidity',
                                title: state is CurrentWeatherLoaded
                                    ? '${state.currentWeatherModel.main.humidity}%'
                                    : '10%',
                              ).animate().slideY(
                                    duration: 800.ms,
                                    delay: 100.ms,
                                    curve: Curves.easeInOutCubic,
                                  ),
                              CardHome(
                                icon: const Icon(Icons.wind_power),
                                subTitle: 'windspeed',
                                title: state is CurrentWeatherLoaded
                                    ? '${state.currentWeatherModel.wind.speed.toStringAsFixed(0)}km/h'
                                    : '9km/h',
                              ).animate().slideX(
                                    begin: 100,
                                    end: 0,
                                    duration: 800.ms,
                                    delay: 100.ms,
                                    curve: Curves.easeInOutCubic,
                                  ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  ///today & 7 day forecast text
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today'),
                        TextButton(
                          child: Text('7-Day Forecast'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SevenDayForcast(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ),

                  /// todays cards
                  SizedBox(
                    height: 150,
                    // width: 200,
                    child: BlocBuilder<DaysNHourBloc, DaysNHourState>(
                      builder: (context, DaysNHourState state) {
                        if (state is DaysnHoursWeatherLoaded) {
                          return ListView.builder(
                            itemCount: state.daysnHoursMode.list.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              // int i = index + 10;

                              /// card for today
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      height10(),

                                      /// time
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(DateFormat("HH:mm a")
                                            .format(DateTime.now().add(
                                                Duration(hours: index + 1)))),
                                      ),

                                      /// icon
                                      Image.asset(
                                        'assets/images/${getTheimageUrl(state.daysnHoursMode.list[index].weather.first.id)}.png',
                                        height: 50,
                                      ),

                                      /// temp
                                      Text(
                                        '${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.daysnHoursMode.list[index].main.temp).toStringAsFixed(0) : state.daysnHoursMode.list[index].main.temp}°${context.watch<UnitConversionCubit>().state ? 'C' : 'K'}',
                                      ),
                                      height10(),
                                    ],
                                  ).animate().slideX(
                                        begin: 100,
                                        end: 0,
                                        duration: 800.ms,
                                        delay: 100.ms,
                                        curve: Curves.easeInOutCubic,
                                      ),
                                ),
                              );
                            },
                          );
                        } else if (state is DaysNHourError) {
                          return Center(
                            child: Text(state.message),
                          );
                        }
                        // print(state);
                        return Center(
                          child: CircularProgressIndicator.adaptive(),
                        );
                      },
                    ),
                  ),

                  ///today & 7 day forecast text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Other Functions'),
                        // IconButton(
                        //   onPressed: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => const SevenDayForcast(),
                        //         ));
                        //   },
                        //   icon: const Hero(
                        //     tag: 'back',
                        //     child: Icon(Icons.add),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  /// other cities
                  SizedBox(
                    height: 130,
                    // width: 390,
                    child: ListView(
                        // itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        // itemBuilder: (context, index) {
                        /// card for other cities
                        children: [
                          SizedBox(
                            width: 260,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 10,
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Mannualy add city',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 10,
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    context
                                        .read<UnitConversionCubit>()
                                        .toggle();
                                  },
                                  child: Text(
                                    context.watch<UnitConversionCubit>().state
                                        ? 'Celcius to Kelvin'
                                        : 'Kelvin to Celcius',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              bottomNavigationBar: FutureBuilder<bool>(
                future: _locationProvider.checkLocationPermission(),
                builder: (context, snapshot) {
                  return snapshot.hasData
                      ? snapshot.data!
                          ? SizedBox.shrink()
                          : BottomAppBar(
                              color: Colors.red,
                              shape: const CircularNotchedRectangle(),
                              child: ListTile(
                                title: Text('Location Permission denied'),
                              ),
                            )
                      : SizedBox.shrink();
                },
              ),
              floatingActionButton: FutureBuilder<bool>(
                  future: _locationProvider.checkLocationPermission(),
                  builder: (context, snapshot) {
                    return snapshot.hasData
                        ? snapshot.data != true
                            ? FloatingActionButton.extended(
                                onPressed: () async {
                                  _locationProvider.checkLocationPermission();
                                },
                                label: Text('Ask Permission'))
                            : SizedBox.shrink()
                        : SizedBox.shrink();
                  }),
            ),
            if (state is CurrentWeatherLoaded)
              for (String x in getTheLottieAnimateUrl(
                  state.currentWeatherModel.weather.first.id))
                LottieBuilder.asset(
                  x,
                ),
          ],
        );
      },
    );
  }
}
