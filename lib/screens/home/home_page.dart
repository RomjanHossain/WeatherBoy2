import 'package:flutter/material.dart';
import 'package:weatherboy2/screens/forcasts/forcast.dart';
import 'package:weatherboy2/screens/home/components/card_home.dart';
import 'package:weatherboy2/screens/home/widgets/cloud_over_text.dart';
import 'package:weatherboy2/utils/consts_.dart';

/// home page for the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Name'),
        centerTitle: true,
        actions: [
          // refresh
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            // color: Colors.red,
            // focusColor: Colors.green,
            // hoverColor: Colors.blue,
            // splashColor: Colors.pink,
            // disabledColor: Colors.deepOrange,
            // highlightColor: Colors.cyanAccent,
          ),
          // // search
          // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          // // switch dark/light mode
          // Switch(value: true, onChanged: (bool v) {}),
        ],
      ),
      body: ListView(
        children: [
          const Center(
            child: Text('Mostly Sunny'),
          ),

          /// cloud over text
          const CloudOverText(),

          /// date and time
          const Text(
            'Sunday 10 February | 10:00 PM',
            textAlign: TextAlign.center,
          ),

          /// simple card for temperature
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.all(8),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
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
            ),
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
            child: ListView.builder(
              itemCount: 7,
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
                          'assets/images/Sun.png',
                          height: 50,
                        ),

                        /// temp
                        const Text('20°C'),
                        height10(),
                      ],
                    ),
                  ),
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
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
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
    );
  }
}
