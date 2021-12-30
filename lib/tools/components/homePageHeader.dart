import 'package:flutter/material.dart';

import '../themes.dart';
class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("mortgage",
    style: TextStyle(
      fontSize: 30,
      fontFamily: "robotoCondensed",
      fontWeight: FontWeight.bold,
      color: sliderColor
    ),);
  }
}