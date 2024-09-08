import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Tap to Expand"),
      children: <Widget>[
        ListTile(title: Text("Child 1")),
        ListTile(title: Text("Child 2")),
        ListTile(title: Text("Child 3")),
      ],
    );
  }
}
