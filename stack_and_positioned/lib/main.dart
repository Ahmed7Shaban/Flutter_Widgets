import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(child: Example1()),
              SizedBox(
                height: 20,
              ),
              Example2(),
              SizedBox(
                height: 20,
              ),
              Example3(),
            ],
          ),
        ),
      ),
    );
  }
}
