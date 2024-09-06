import 'package:flutter/material.dart';

class BasicOpacityTransition extends StatefulWidget {
  @override
  _BasicOpacityTransitionState createState() => _BasicOpacityTransitionState();
}

class _BasicOpacityTransitionState extends State<BasicOpacityTransition> {
  double _opacity = 1.0; // Initial opacity value (fully visible)

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity, // Use state to control opacity
            duration: const Duration(seconds: 2), // Animation duration
            child: const Text(
              "Flutter AnimatedOpacity",
              style: TextStyle(fontSize: 24),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle opacity
              });
            },
            child: const Text("Animate"),
          ),
        ],
      ),
    );
  }
}
