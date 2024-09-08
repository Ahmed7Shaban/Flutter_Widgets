import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.blueGrey.shade50,
      iconColor: Colors.blue,
      textColor: Colors.blue,
      collapsedIconColor: Colors.grey,
      collapsedTextColor: Colors.black54,
      title: Text("Custom Styled Tile"),
      children: const <Widget>[
        ListTile(title: Text("Styled Child 1")),
        ListTile(title: Text("Styled Child 2")),
      ],
    );
  }
}
