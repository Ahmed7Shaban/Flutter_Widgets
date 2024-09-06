import 'package:flutter/material.dart';

class SlideScaleExample extends StatefulWidget {
  @override
  _SlideScaleExampleState createState() => _SlideScaleExampleState();
}

class _SlideScaleExampleState extends State<SlideScaleExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) {
              return SlideTransition(
                position: Tween<Offset>(
                        begin: const Offset(0, 1), end: const Offset(0, 0))
                    .animate(animation),
                child: ScaleTransition(scale: animation, child: child),
              );
            },
            child: Text(
              '$_counter',
              key: ValueKey<int>(_counter),
              style: const TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Slide and Scale Text'),
          ),
        ],
      ),
    );
  }
}
