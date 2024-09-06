import 'package:flutter/material.dart';

class FadeBackgroundColor extends StatefulWidget {
  @override
  _FadeBackgroundColorState createState() => _FadeBackgroundColorState();
}

class _FadeBackgroundColorState extends State<FadeBackgroundColor> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color:
          Colors.red.withOpacity(_opacity), // Change background color opacity
      duration: const Duration(seconds: 2),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _opacity = _opacity == 1.0 ? 0.3 : 1.0; // Toggle color opacity
            });
          },
          child: const Text("Change Background Color"),
        ),
      ),
    );
  }
}
