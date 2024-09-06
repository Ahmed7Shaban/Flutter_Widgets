import 'package:flutter/material.dart';

class RotationFadeExample extends StatefulWidget {
  @override
  _RotationFadeExampleState createState() => _RotationFadeExampleState();
}

class _RotationFadeExampleState extends State<RotationFadeExample> {
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
              return FadeTransition(
                opacity: animation,
                child: RotationTransition(turns: animation, child: child),
              );
            },
            child: _counter.isOdd
                ? Icon(Icons.star, key: ValueKey<int>(_counter), size: 100)
                : Icon(Icons.star_border,
                    key: ValueKey<int>(_counter), size: 100),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Switch Star'),
          ),
        ],
      ),
    );
  }
}
