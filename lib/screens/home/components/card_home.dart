import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final Widget icon;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        Text(title),
        Text(subTitle),
      ],
    );
  }
}
