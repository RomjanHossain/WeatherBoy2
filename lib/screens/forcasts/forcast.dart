import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherboy2/blocs/days_n_hours_bloc/bloc/days_n_hour_bloc.dart';
import 'package:weatherboy2/cubits/conversion/cubit/unit_conversion_cubit.dart';
import 'package:weatherboy2/data/provider/db_provider.dart';
import 'package:weatherboy2/screens/home/components/card_home.dart';
import 'package:weatherboy2/screens/home/components/gethe_image.dart';
import 'package:weatherboy2/utils/consts_.dart';

class SevenDayForcast extends StatelessWidget {
  const SevenDayForcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('7 Days'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Hero(
            tag: 'back',
            child: Icon(Icons.arrow_back),
          ),
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //       onPressed: () async {
        //         DBProvider dbProvider = DBProvider();
        //         // await dbProvider.setCoord(0, 0);
        //         var _coord = await dbProvider.getCoord();
        //         // print('coord from DB: ${_coord?.lon}');
        //       },
        //       icon: const Icon(Icons.menu)),
        // ],
      ),
      body: BlocBuilder<DaysNHourBloc, DaysNHourState>(
        builder: (context, state) {
          return ListView(
            children: [
              /// Tomorrow's card
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        height20(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                if (state is DaysnHoursWeatherLoaded)
                                  Image.asset(
                                    'assets/images/${getTheimageUrl(state.daysnHoursMode.list.first.weather.first.id)}.png',
                                    height: 150,
                                  )
                                else
                                  Image.asset(
                                    'assets/images/Sun.png',
                                    height: 150,
                                  ),
                                // Text(
                                //   'HOla',
                                //   style: Theme.of(context).textTheme.displayLarge,
                                // ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: RichText(
                                    text: TextSpan(
                                      text: state is DaysnHoursWeatherLoaded
                                          ? '${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.daysnHoursMode.list.first.main.temp).toStringAsFixed(0) : state.daysnHoursMode.list.first.main.temp}°'
                                          : '0°',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                            fontSize: 70,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: state is DaysnHoursWeatherLoaded
                                              ? '/${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.daysnHoursMode.list.first.main.minTemp).toStringAsFixed(0) : state.daysnHoursMode.list.first.main.minTemp.toString().split('.').first}°'
                                              : '/0°',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            width20(),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tomorrow'),
                                  Text('Mostly Sunny'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        height20(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CardHome(
                              icon: Icon(Icons.wb_sunny),
                              subTitle: 'Pressure',
                              title: state is DaysnHoursWeatherLoaded
                                  ? '${state.daysnHoursMode.list.first.main.pressure}'
                                  : '22%',
                            ),
                            CardHome(
                              icon: Icon(Icons.wb_twighlight),
                              subTitle: 'humidity',
                              title: state is DaysnHoursWeatherLoaded
                                  ? '${state.daysnHoursMode.list.first.main.humidity}%'
                                  : '22%',
                            ),
                            CardHome(
                              icon: Icon(Icons.wind_power),
                              subTitle: 'windspeed',
                              // title: '9km/h',
                              title: state is DaysnHoursWeatherLoaded
                                  ? '${state.daysnHoursMode.list.first.wind.speed.toStringAsFixed(2)}km/h'
                                  : '22km/h',
                            ),
                          ],
                        ),
                        height20(),
                        height10(),
                      ],
                    ),
                  )
                      .animate(
                        onPlay: (AnimationController controller) =>
                            controller.repeat(),
                      )
                      .then(
                        delay: 200.ms,
                      )
                      .shimmer(
                        duration: 3000.ms,
                        delay: 5000.ms,
                        curve: Curves.easeInCubic,
                      ),
                  if (state is DaysnHoursWeatherLoaded)
                    for (String x in getTheLottieAnimateUrl(
                        state.daysnHoursMode.list.first.weather.first.id))
                      Align(
                        alignment: Alignment.center,
                        child: LottieBuilder.asset(
                          x,
                          height: 300,
                        ),
                      ),
                ],
              ),

              /// listview of nxt 6 days
              if (state is DaysnHoursWeatherLoaded)
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (c, i) {
                    return Card(
                      // margin: const EdgeInsets.all(8) ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /// day
                            Text(
                              DateFormat('EEEE').format(
                                DateTime.now().add(
                                  Duration(days: i + 1),
                                ),
                              ),
                            ),

                            /// status
                            Image.asset(
                              'assets/images/${getTheimageUrl(state.daysnHoursMode.list.elementAt(i + 1).weather.first.id)}.png',
                              height: 20,
                            ),

                            /// status txt
                            Text(state.daysnHoursMode.list
                                .elementAt(i + 1)
                                .weather
                                .first
                                .description
                                .toUpperCase()),

                            /// temp 1
                            Text(
                                '+${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.daysnHoursMode.list.first.main.maxTemp).toStringAsFixed(0) : state.daysnHoursMode.list.first.main.maxTemp.toString().split('.').first}°'),

                            /// temp 2
                            Text(
                                '+${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.daysnHoursMode.list.first.main.minTemp).toStringAsFixed(0) : state.daysnHoursMode.list.first.main.minTemp.toString().split('.').first}°'),

                            // const Text('+15°'),
                          ],
                        ),
                      ),
                    ).animate().slideX(
                          duration: 1000.ms,
                          // delay: 500.ms,
                          curve: Curves.easeInOutCubic,
                        );
                  },
                  itemCount: state.daysnHoursMode.list.length - 1,
                ),
            ],
          );
        },
      ),
    );
  }
}
