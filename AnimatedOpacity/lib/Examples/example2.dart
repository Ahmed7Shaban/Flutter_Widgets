import 'package:flutter/material.dart';

class FadingButton extends StatefulWidget {
  @override
  _FadingButtonState createState() => _FadingButtonState();
}

class _FadingButtonState extends State<FadingButton> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 500), // Fast transition
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Click Me!"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle visibility
              });
            },
            child: const Text("Fade Button"),
          ),
        ],
      ),
    );
  }
}
