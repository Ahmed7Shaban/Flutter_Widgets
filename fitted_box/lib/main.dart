import 'package:fitted_box/Example/example_2.dart';
import 'package:flutter/material.dart';

import 'Example/example_1.dart';

void main() {
  runApp(const FittedBoxExample());
}

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

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
      body: const Example2(),
    );
  }
}
