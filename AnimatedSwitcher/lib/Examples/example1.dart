import 'package:flutter/material.dart';

class SwitcherExample extends StatefulWidget {
  @override
  _SwitcherExampleState createState() => _SwitcherExampleState();
}

class _SwitcherExampleState extends State<SwitcherExample> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // AnimatedSwitcher switches between two different widgets.
          AnimatedSwitcher(
            duration:
                const Duration(milliseconds: 500), // Duration of the animation.
            transitionBuilder: (Widget child, Animation<double> animation) {
              // This part controls the type of animation used during the switch.
              return ScaleTransition(child: child, scale: animation);
            },
            child: Text(
              // The key is crucial for AnimatedSwitcher to differentiate between widgets.
              '$_counter',
              key: ValueKey<int>(_counter),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
                // This will trigger the switch between the old and new Text widgets.
              });
            },
            child: const Text('Increment Counter'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter--;
                // This will trigger another switch between the old and new Text widgets.
              });
            },
            child: const Text('Decrement Counter'),
          ),
        ],
      ),
    );
  }
}
