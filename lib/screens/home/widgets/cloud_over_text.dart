import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherboy2/blocs/current_weather_bloc/bloc/current_weather_bloc.dart';
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
                  );
                }
                return Image.asset(
                  'assets/images/Cloud.png',
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
                    ? '${kelvinToCelcius(state.currentWeatherModel.main.temp).toStringAsFixed(0)}°'
                    : '23°',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 150,
                      fontWeight: FontWeight.w600,
                      // color: Colors.white,
                    ),
              );
            },
          ),
        ),
        // asdfs
      ],
    );
  }
}
