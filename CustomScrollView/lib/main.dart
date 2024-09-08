import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';
import 'Examples/example4.dart';
import 'Examples/example5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Example5(),
      /*
         Example1(),
         Example2(),
         Example3(),
         Example4(),
         Example5(),

       */
    );
  }
}
