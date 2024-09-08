import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      leading: Icon(Icons.info),
      title: Text("More Info"),
      subtitle: Text("Tap to see details"),
      children: <Widget>[
        ListTile(title: Text("Detail 1")),
        ListTile(title: Text("Detail 2")),
        ListTile(title: Text("Detail 3")),
      ],
    );
  }
}
