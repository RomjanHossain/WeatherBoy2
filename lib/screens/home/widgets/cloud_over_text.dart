import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherboy2/blocs/current_weather_bloc/bloc/current_weather_bloc.dart';
import 'package:weatherboy2/cubits/conversion/cubit/unit_conversion_cubit.dart';
import 'package:weatherboy2/screens/home/components/gethe_image.dart';
import 'package:weatherboy2/utils/consts_.dart';

class CloudOverText extends StatelessWidget {
  const CloudOverText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width / 2 - 50,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 150,
            child: BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
              builder: (context, state) {
                if (state is CurrentWeatherLoaded) {
                  return Image.asset(
                    'assets/images/${getTheimageUrl(state.currentWeatherModel.weather.first.id)}.png',
                    fit: BoxFit.fitHeight,
                  )
                      .animate()
                      .slideX(
                        duration: 900.ms,
                      )
                      .then()
                      .shakeX(
                        delay: 100.ms,
                      );
                }
                return Image.asset(
                  'assets/images/Sun.png',
                  fit: BoxFit.fitHeight,
                );
              },
            ),
          ),
        ),
        Center(
          child: BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
            builder: (context, state) {
              return Text(
                state is CurrentWeatherLoaded
                    ? '${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(state.currentWeatherModel.main.temp).toStringAsFixed(0) : state.currentWeatherModel.main.temp.toString().split('.').first}°'
                    : '0°',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 150,
                      fontWeight: FontWeight.w600,

                      // color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ).animate().scale(
                    delay: 900.ms,
                    duration: 900.ms,
                  );
            },
          ),
        ),
        // asdfs
      ],
    );
  }
}
