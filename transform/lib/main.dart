import 'package:flutter/material.dart';

import 'Exampels.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MovesTheWidget20pixels(),
              const SizedBox(
                height: 20,
              ),
              ScalesTheWidgetTo150(),
              const SizedBox(
                height: 20,
              ),
              RotatesTheWidget(),
              const SizedBox(
                height: 20,
              ),
              SkewsTheWidget(),
              const SizedBox(
                height: 20,
              ),
              Example(),
            ],
          ),
        ),
      ),
    );
  }
}
