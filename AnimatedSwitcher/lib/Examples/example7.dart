import 'package:flutter/material.dart';

class CrossFadeExample extends StatefulWidget {
  @override
  _CrossFadeExampleState createState() => _CrossFadeExampleState();
}

class _CrossFadeExampleState extends State<CrossFadeExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: _counter % 2 == 0
                ? const Icon(Icons.favorite,
                    key: ValueKey('icon1'), color: Colors.red, size: 100)
                : const Icon(Icons.favorite_border,
                    key: ValueKey('icon2'), color: Colors.grey, size: 100),
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Toggle Icon'),
          ),
        ],
      ),
    );
  }
}
