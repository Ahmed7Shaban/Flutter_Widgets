import 'package:flutter/material.dart';

class ColorFadeExample extends StatefulWidget {
  @override
  _ColorFadeExampleState createState() => _ColorFadeExampleState();
}

class _ColorFadeExampleState extends State<ColorFadeExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: Container(
              key: ValueKey<int>(_counter),
              color: _counter.isEven ? Colors.red : Colors.blue,
              width: 100,
              height: 100,
            ),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Change Color'),
          ),
        ],
      ),
    );
  }
}
