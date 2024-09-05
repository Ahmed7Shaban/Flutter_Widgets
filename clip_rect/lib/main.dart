import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';
import 'Examples/example4.dart';
import 'Examples/example5.dart';
import 'Examples/example6.dart';
import 'Examples/example7.dart';
import 'Examples/example8.dart';

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
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Example1(),
              const SizedBox(
                height: 20,
              ),
              ClipRectAnimation(),
              const SizedBox(
                height: 20,
              ),
              const Example3(),
              const SizedBox(
                height: 20,
              ),
              const Example4(),
              const SizedBox(
                height: 20,
              ),
              const Example5(),
              const SizedBox(
                height: 20,
              ),
              ClipRectDemo(),
              const SizedBox(
                height: 20,
              ),
              ClipRectOpacityDemo(),
              const SizedBox(
                height: 20,
              ),
              ClipBehaviorDemo()
            ],
          ),
        ),
      ),
    );
  }
}
