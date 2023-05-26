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
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Text('Mostly Sunny'),

                      /// temp 1
                      Text('+30°'),

                      /// temp 2
                      Text('+15°'),
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
