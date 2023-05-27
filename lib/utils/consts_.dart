import 'package:flutter/material.dart';

SizedBox width20() => const SizedBox(width: 20);
SizedBox height20() => const SizedBox(height: 20);
SizedBox height10() => const SizedBox(height: 10);

/// covnert kelvin to celcius
double kelvinToCelcius(double kelvin) => kelvin - 273.15;

const List<String> days = <String>[
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
