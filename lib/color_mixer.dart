import 'package:flutter/material.dart';
import 'package:colormixer_ste_mgmt/color_changer.dart';
import 'color_circle.dart';

//class that does the mixing of colors  through lifting state up
class ColorMixer extends StatefulWidget {
  const ColorMixer({Key key}) : super(key: key);
  @override
  State<ColorMixer> createState() => _ColorMixerState();
}

class _ColorMixerState extends State<ColorMixer> {
  //variable for colors
  int red = 0;
  int blue = 0;
  int green = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorCircle(color: Color.fromRGBO(red, green, blue, 1), radius: 100),
        const SizedBox(height: 20.0),
        //By Lifting State Up -- It passes the "setColor" function to ColorValueChager class and then other properties below
        ColorValueChanger(property: "Red", value: red, onChanged: setColor),
        ColorValueChanger(property: "Green", value: green, onChanged: setColor),
        ColorValueChanger(property: "Blue", value: blue, onChanged: setColor),
      ],
    );
  }

  //Function that passses data up
  void setColor(String property, int value) {
    setState(() {
      red = (property == "Red") ? value : red;
      green = (property == "Green") ? value : green;
      blue = (property == "Blue") ? value : blue;
    });
  }
}
