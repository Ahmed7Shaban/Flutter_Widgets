import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Parent Tile"),
      children: <Widget>[
        ListTile(title: Text("Child 1")),
        ExpansionTile(
          title: Text("Nested Tile"),
          children: <Widget>[
            ListTile(title: Text("Nested Child 1")),
            ListTile(title: Text("Nested Child 2")),
          ],
        ),
        ListTile(title: Text("Child 2")),
      ],
    );
  }
}
