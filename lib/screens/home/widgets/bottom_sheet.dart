import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherboy2/blocs/current_weather_bloc/bloc/current_weather_bloc.dart';
import 'package:weatherboy2/utils/consts_.dart';

/// add city bottom sheet
class AddCity extends StatefulWidget {
  const AddCity({Key? key}) : super(key: key);

  @override
  State<AddCity> createState() => _AddCityState();
}

class _AddCityState extends State<AddCity> {
  final TextEditingController _lonControllar = TextEditingController();
  final TextEditingController _latControllar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () => Navigator.pop(context),
      builder: (c) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter Latitude and Longitude',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              height20(),
              height10(),
              TextField(
                controller: _latControllar,
                decoration: InputDecoration(
                  hintText: 'Enter Latitude',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              height20(),
              TextField(
                controller: _lonControllar,
                decoration: InputDecoration(
                  hintText: 'Enter Longitude',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              height10(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(200, 50),
                  elevation: 3,
                ),
                onPressed: () {
                  if (_latControllar.text.isNotEmpty &&
                      _lonControllar.text.isNotEmpty) {
                    // context.read<CurrentWeatherCubit>().getWeatherByLatLon(
                    //       lat: double.parse(_latControllar.text),
                    //       lon: double.parse(_lonControllar.text),
                    //     );
                    context
                        .read<CurrentWeatherBloc>()
                        .add(GetCurrentWeatherEvent(
                          lat: double.parse(_latControllar.text),
                          lon: double.parse(_lonControllar.text),
                        ));
                    Navigator.pop(context);
                  }
                  // Navigator.pop(context);
                },
                child: const Text('Add City'),
              ),
            ],
          ),
        );
      },
    );
  }
}
