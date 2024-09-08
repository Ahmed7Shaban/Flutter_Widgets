import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Tap to Expand"),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Expanded(child: Text("Item 1")),
              Expanded(child: Text("Item 2")),
              Expanded(child: Text("Item 3")),
            ],
          ),
        )
      ],
    );
  }
}
