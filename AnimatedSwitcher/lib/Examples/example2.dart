import 'package:flutter/material.dart';

class FadeExample extends StatefulWidget {
  @override
  _FadeExampleState createState() => _FadeExampleState();
}

class _FadeExampleState extends State<FadeExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: Text(
              '$_counter',
              key: ValueKey<int>(_counter),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
