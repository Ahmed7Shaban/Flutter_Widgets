import 'package:flutter/material.dart';

class ScaleExample extends StatefulWidget {
  @override
  _ScaleExampleState createState() => _ScaleExampleState();
}

class _ScaleExampleState extends State<ScaleExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,
            ),
            child: Icon(
              _counter.isEven ? Icons.check : Icons.close,
              key: ValueKey<int>(_counter),
              size: 100,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Switch Icon'),
          ),
        ],
      ),
    );
  }
}
