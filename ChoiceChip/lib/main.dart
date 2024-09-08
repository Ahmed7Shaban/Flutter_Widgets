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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChoiceChipExample(),
            CustomChoiceChip(),
            DynamicChoiceChip(),
            MultiSelectChoiceChip(),
            IconChoiceChip(),
            ToggleableChoiceChip(),
            DisabledChoiceChipExample(),
            ChoiceChipGroupExample(),
            AnimatedChoiceChip(),
            CustomStyledChoiceChip(),
          ],
        ),
      ),
    );
  }
}
