import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  @override
  _AnimatedCrossFadeExampleState createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _showFirst = true; // This variable controls which child to show

  // Method to toggle between the two children
  void _toggleCrossFade() {
    setState(() {
      _showFirst = !_showFirst; // Flip the state to show the other widget
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AnimatedCrossFade widget which shows one widget at a time and crossfades between them
          AnimatedCrossFade(
            firstChild: Container(
              // First widget to display (a red square)
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('First')),
            ),
            secondChild: Container(
              // Second widget to display (a blue square)
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(child: Text('Second')),
            ),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst // Show the first child
                : CrossFadeState.showSecond, // Show the second child
            duration: const Duration(
                seconds: 2), // Duration of the cross fade animation
            firstCurve: Curves.easeIn, // Animation curve for the first widget
            secondCurve:
                Curves.easeOut, // Animation curve for the second widget
            sizeCurve:
                Curves.bounceOut, // Animation curve for resizing if needed
          ),
          const SizedBox(
              height: 20), // Spacing between the button and animation
          ElevatedButton(
            onPressed: _toggleCrossFade, // Button toggles the animation
            child: const Text('Toggle CrossFade'),
          ),
        ],
      ),
    );
  }
}
