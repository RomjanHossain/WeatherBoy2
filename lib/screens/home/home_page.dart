import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherboy2/blocs/days_n_hours_bloc/bloc/days_n_hour_bloc.dart';
import 'package:weatherboy2/data/provider/api_provider.dart';
import 'package:weatherboy2/data/repository/weather_repo.dart';
import 'package:weatherboy2/models/days_hours_model.dart';
import 'package:weatherboy2/screens/forcasts/forcast.dart';
import 'package:weatherboy2/screens/home/components/card_home.dart';
import 'package:weatherboy2/screens/home/components/gethe_image.dart';
import 'package:weatherboy2/screens/home/widgets/cloud_over_text.dart';
import 'package:weatherboy2/utils/consts_.dart';

import '../../blocs/current_weather_bloc/bloc/current_weather_bloc.dart';

/// home page for the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                      // print('btn clicked');
                      final WeatherRepo _weatherRepo = WeatherRepo();
                      DaysnHoursMode _dd = await _weatherRepo.getDaysnHoursData(
                        28.7041,
                        77.1025,
                      );
                      // print(_dd);
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
                        : const Text('Mostly Sunny'),
                  ),

                  /// cloud over text
                  const CloudOverText(),
                  height20(),

                  /// date and time
                  const Text(
                    'Sunday 10 February | 10:00 PM',
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
                              ),
                              CardHome(
                                icon: const Icon(Icons.wb_twighlight),
                                subTitle: 'humidity',
                                title: state is CurrentWeatherLoaded
                                    ? '${state.currentWeatherModel.main.humidity}%'
                                    : '10%',
                              ),
                              CardHome(
                                icon: const Icon(Icons.wind_power),
                                subTitle: 'windspeed',
                                title: state is CurrentWeatherLoaded
                                    ? '${state.currentWeatherModel.wind.speed.toStringAsFixed(0)}km/h'
                                    : '9km/h',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  ///today & 7 day forecast text
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Today'),
                        Text('7-Day Forecast'),
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
                              int i = index + 10;

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
                                        child: Text('${i + 1}:00 PM'),
                                      ),

                                      /// icon
                                      Image.asset(
                                        'assets/images/${getTheimageUrl(state.daysnHoursMode.list[index].weather.first.id)}.png',
                                        height: 50,
                                      ),

                                      /// temp
                                      Text(
                                        '${kelvinToCelcius(state.daysnHoursMode.list[index].main.temp).toStringAsFixed(0)}°C',
                                      ),
                                      height10(),
                                    ],
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
                        const Text('Other Cities'),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SevenDayForcast(),
                                ));
                          },
                          icon: const Hero(
                            tag: 'back',
                            child: Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// other cities
                  SizedBox(
                    height: 130,
                    // width: double.infinity,
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        /// card for other cities
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              width20(),

                              /// icon
                              Image.asset(
                                'assets/images/Cloud.png',
                                height: 80,
                              ),
                              width20(),

                              /// Column (country & status)
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  /// country name
                                  Text('New Zealand'),

                                  /// status
                                  Text('Sunny'),
                                ],
                              ),
                              width20(),

                              /// temp
                              Text(
                                '20°C',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              width20(),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
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
