import 'package:flutter/material.dart';

import 'Example/example_1.dart';
import 'Example/example_2.dart';
import 'Example/example_3.dart';
import 'Example/example_4.dart';
import 'Example/example_5.dart';
import 'Example/example_6.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ContainerWidgetExample6(),
      ),
    );
  }
}
