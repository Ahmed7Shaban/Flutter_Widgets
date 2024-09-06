import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example10.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';
import 'Examples/example4.dart';
import 'Examples/example5.dart';
import 'Examples/example6.dart';
import 'Examples/example7.dart';
import 'Examples/example8.dart';
import 'Examples/example9.dart';

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
              BasicOpacityTransition(),
              const SizedBox(height: 20),
              FadingButton(),
              //  const SizedBox(height: 20),
              //   OpacityNetworkStatus(),
              const SizedBox(height: 20),
              FadeInOnLoad(),
              const SizedBox(height: 20),
              //  FadeProfileImage(),
              //   const SizedBox(height: 20),
              FadeOutErrorMessage(),
              const SizedBox(height: 20),
              //FadeOnScroll(),
              const SizedBox(height: 20),
              // FABOpacityChange(),
              // const SizedBox(height: 20),
              FadeWidgetsColumn(),
              const SizedBox(height: 20),
              FadeBackgroundColor(),
            ],
          ),
        ),
      ),
    );
  }
}
