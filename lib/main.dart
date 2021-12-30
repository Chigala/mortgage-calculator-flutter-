import 'package:flutter/material.dart';
import 'package:myapp/tools/themes.dart';
import 'package:myapp/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mortgage app",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "arimo"
      ),
      home: const HomePage(),
    );
  }
}
