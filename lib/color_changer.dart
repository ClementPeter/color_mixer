import 'package:flutter/material.dart';

//class that builds individual sliders and changes color property
class ColorValueChanger extends StatefulWidget {
  final String property;
  final int value;
  final Function onChanged;

  const ColorValueChanger({Key key, this.property, this.value, this.onChanged})
      : super(key: key);

  @override
  State<ColorValueChanger> createState() => _ColorValueChangerState();
}

class _ColorValueChangerState extends State<ColorValueChanger> {
  //property that accepts data from widget.value
  int sliderValue;
  @override
  Widget build(BuildContext context) {
    sliderValue = widget.value;

    return Column(
      children: [
        Slider(
          min: 0,
          max: 255,
          value: sliderValue.toDouble(),
          label: widget.property,
          onChanged: _onchanged,
        ),
        Text(widget.property, style: Theme.of(context).textTheme.headline6),
      ],
    );
  }

  //Updating the slider value
  void _onchanged(double value) {
    setState(() {
      sliderValue = value.round();
    });
    widget.onChanged(widget.property, value.round());
  }
}
