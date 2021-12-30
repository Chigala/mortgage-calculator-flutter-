// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/tools/components/homePageHeader.dart';
import 'package:myapp/tools/components/slider.dart';
import 'package:myapp/tools/themes.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic price = 100000;
  int divisionOfSliderHouse = 9;
  double minValueOfHouse = 100000;
  double maxValueOfHouse = 1000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "calculate",
          style: TextStyle(color: homePageTextColor),
        ),
        elevation: 0,
        backgroundColor: homePageBackground,
        toolbarHeight: 40,
        titleSpacing: 40,
        actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.menu,
                color: sliderColor,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: homePageBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: HomePageHeader(),
            ),
            SizedBox(height: 10),
            //  Lottie.asset('assets/lottie.json'),

            Image(image: AssetImage("assets/office-worker.jpg")),
            SizedBox(height: 20),
            SliderClass(
                maxValue: maxValueOfHouse,
                divisionValue: divisionOfSliderHouse,
                minValue: minValueOfHouse,
                onValueChange: (double value) {
                  setState(() {
                    price = value.round().toString().replaceAllMapped(
                        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                        (Match m) => '${m[1]},');
                    
                  });
                }),
            Text('$price')
          ],
        ),
      ),
    );
  }
}
