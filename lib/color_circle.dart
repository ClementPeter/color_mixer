import 'package:flutter/material.dart';

//Builds the indiviual colors circles with dynamic radius
class ColorCircle extends StatelessWidget {
  final int radius;
  final Color color;

  const ColorCircle({Key key, this.radius, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius.toDouble(),
          backgroundColor: color,
        ),
      ],
    );
  }
}