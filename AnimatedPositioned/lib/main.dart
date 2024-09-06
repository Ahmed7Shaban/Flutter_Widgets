import 'package:animated_positioned/Examples/example2.dart';
import 'package:animated_positioned/Examples/example5.dart';
import 'package:animated_positioned/Examples/example6.dart';
import 'package:flutter/material.dart';

import 'Examples/Example3.dart';
import 'Examples/Example4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Example6(),
      /*
      Example1
      Example2
      Example3
      Example4
      Example5
      Example6
       */
    );
  }
}
