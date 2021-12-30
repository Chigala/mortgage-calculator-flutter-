// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';



class SliderClass extends StatefulWidget {
  const SliderClass({
    Key? key,
    required this.maxValue,
    required this.divisionValue,
    required this.minValue,
    required this.onValueChange,
  }) : super(key: key);
  final double maxValue;
  final int divisionValue;
  final double minValue;
  final Function(double) onValueChange;

  @override
  _SliderClassState createState() => _SliderClassState();
}

class _SliderClassState extends State<SliderClass> {
  double _value = 100000;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      label: _value.round().toString(),
      min: widget.minValue,
      max: widget.maxValue,
      divisions: widget.divisionValue,
      onChanged: (double value) {
        setState(() {
          _value = value;
        });
        widget.onValueChange(_value);
      },
    );
  }
}
