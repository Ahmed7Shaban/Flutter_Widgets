import 'package:flutter/material.dart';

import 'Examples/example1.dart';
import 'Examples/example2.dart';
import 'Examples/example3.dart';
import 'Examples/example4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedList Example')),
        body: AnimatedListTransition(),
        /*
        AnimatedListTransition(),
        AnimatedAddList(),
        AnimatedRemoveList(),
        AnimatedListScroll(),
         */
      ),
    );
  }
}
