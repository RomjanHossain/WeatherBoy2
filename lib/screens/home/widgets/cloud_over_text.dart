import 'package:flutter/material.dart';

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
            child: Image.asset(
              'assets/images/Night.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Center(
          child: Text(
            '23°',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 150,
                  fontWeight: FontWeight.w600,
                  // color: Colors.white,
                ),
          ),
        ),
        // asdfs
      ],
    );
  }
}
