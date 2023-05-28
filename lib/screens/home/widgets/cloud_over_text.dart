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
    required this.id,
    required this.temp,
  });

  final int id;
  final double temp;

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
            child: Image.asset(
              'assets/images/${getTheimageUrl(id)}.png',
              fit: BoxFit.fitHeight,
            )
                .animate()
                .slideX(
                  duration: 900.ms,
                )
                .then()
                .shakeX(
                  delay: 100.ms,
                ),
          ),
        ),

        Center(
            child: Text(
          '${context.watch<UnitConversionCubit>().state ? kelvinToCelcius(temp).toStringAsFixed(0) : temp.toString().split('.').first}°',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 150,
                fontWeight: FontWeight.w600,

                // color: Colors.white,
              ),
          textAlign: TextAlign.center,
        ).animate().scale(
                  delay: 900.ms,
                  duration: 900.ms,
                )),
        // asdfs
      ],
    );
  }
}
