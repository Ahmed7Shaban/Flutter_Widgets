import 'package:flutter/material.dart';

class FlipExample extends StatefulWidget {
  @override
  _FlipExampleState createState() => _FlipExampleState();
}

class _FlipExampleState extends State<FlipExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (child, animation) => RotationTransition(
              turns: Tween<double>(begin: 1, end: 0).animate(animation),
              child: child,
            ),
            child: Text(
              '$_counter',
              key: ValueKey<int>(_counter),
              style: const TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Flip Text'),
          ),
        ],
      ),
    );
  }
}
