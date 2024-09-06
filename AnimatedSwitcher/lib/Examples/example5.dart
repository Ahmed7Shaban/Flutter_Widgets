import 'package:flutter/material.dart';

class RotateExample extends StatefulWidget {
  @override
  _RotateExampleState createState() => _RotateExampleState();
}

class _RotateExampleState extends State<RotateExample> {
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
              turns: animation,
              child: child,
            ),
            child: Icon(
              Icons.autorenew,
              key: ValueKey<int>(_counter),
              size: 50,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Rotate Icon'),
          ),
        ],
      ),
    );
  }
}
