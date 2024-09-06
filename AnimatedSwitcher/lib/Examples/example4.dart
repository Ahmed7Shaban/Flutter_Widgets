import 'package:flutter/material.dart';

class SlideExample extends StatefulWidget {
  @override
  _SlideExampleState createState() => _SlideExampleState();
}

class _SlideExampleState extends State<SlideExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) => SlideTransition(
              position: Tween<Offset>(
                      begin: const Offset(1, 0), end: const Offset(0, 0))
                  .animate(animation),
              child: child,
            ),
            child: Text(
              '$_counter',
              key: ValueKey<int>(_counter),
              style: const TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Slide Text'),
          ),
        ],
      ),
    );
  }
}
