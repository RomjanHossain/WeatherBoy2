import 'package:flutter/material.dart';
import 'package:weatherboy2/screens/home/components/card_home.dart';
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
        actions: [
          IconButton(
              onPressed: () async {
                // String _h = String.fromEnvironment('JAVA_HOME');
                // print(_h);
                /// testing the api
                // final _api = APIProvider();
                // final CurrentWeatherModel _data =
                //     await _api.getCurrentWeather(40.7128, -74.0060);
                // print(_data);
              },
              icon: const Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          /// Tomorrow's card
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
                        Image.asset(
                          'assets/images/Windy.png',
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
                              text: '30°',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: [
                                TextSpan(
                                  text: '/15°',
                                  style: Theme.of(context).textTheme.bodyLarge,
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardHome(
                      icon: Icon(Icons.wb_sunny),
                      subTitle: 'percitipition',
                      title: '10%',
                    ),
                    CardHome(
                      icon: Icon(Icons.wb_twighlight),
                      subTitle: 'humidity',
                      title: '10%',
                    ),
                    CardHome(
                      icon: Icon(Icons.wind_power),
                      subTitle: 'windspeed',
                      title: '9km/h',
                    ),
                  ],
                ),
                height20(),
                height10(),
              ],
            ),
          ),

          /// listview of nxt 6 days
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
                      Text(days[i]),

                      /// status
                      Image.asset(
                        'assets/images/Wind.png',
                        height: 20,
                      ),

                      /// status txt
                      const Text('Mostly Sunny'),

                      /// temp 1
                      const Text('+30°'),

                      /// temp 2
                      const Text('+15°'),
                    ],
                  ),
                ),
              );
            },
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}
