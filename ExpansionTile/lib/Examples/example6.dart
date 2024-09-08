import 'package:flutter/material.dart';

class Example6 extends StatelessWidget {
  const Example6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: const Text("Tap for Animated Expansion"),
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: Colors.greenAccent,
              child: const ListTile(title: Text("Animated Child")),
            ),
          ],
        )
      ],
    );
  }
}
