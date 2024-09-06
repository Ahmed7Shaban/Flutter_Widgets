import 'package:flutter/material.dart';

class SizeExample extends StatefulWidget {
  @override
  _SizeExampleState createState() => _SizeExampleState();
}

class _SizeExampleState extends State<SizeExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) => SizeTransition(
              sizeFactor: animation,
              axis: Axis.horizontal,
              child: child,
            ),
            child: Container(
              key: ValueKey<int>(_counter),
              color: Colors.blue,
              width: 100.0 + _counter * 10,
              height: 100,
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Increase Size'),
          ),
        ],
      ),
    );
  }
}
