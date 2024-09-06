import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example10.dart';
import 'Examples/example11.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';
import 'Examples/example4.dart';
import 'Examples/example5.dart';
import 'Examples/example6.dart';
import 'Examples/example7.dart';
import 'Examples/example8.dart';
import 'Examples/example9.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AnimatedSwitcher Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const home());
  }
}

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SwitcherExample(),
                const SizedBox(height: 20),
                FadeExample(),
                const SizedBox(height: 20),
                ScaleExample(),
                const SizedBox(height: 20),
                SlideExample(),
                const SizedBox(height: 20),
                RotateExample(),
                const SizedBox(height: 20),
                FlipExample(),
                const SizedBox(height: 20),
                CrossFadeExample(),
                const SizedBox(height: 20),
                SizeExample(),
                const SizedBox(height: 20),
                RotationFadeExample(),
                const SizedBox(height: 20),
                ColorFadeExample(),
                const SizedBox(height: 20),
                SlideScaleExample(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
