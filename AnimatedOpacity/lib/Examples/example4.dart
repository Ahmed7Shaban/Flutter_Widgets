import 'package:flutter/material.dart';

class FadeWidgetsColumn extends StatefulWidget {
  @override
  _FadeWidgetsColumnState createState() => _FadeWidgetsColumnState();
}

class _FadeWidgetsColumnState extends State<FadeWidgetsColumn> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 1),
            child: const Text("First Widget"),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 1),
            child: const Text("Second Widget"),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 1),
            child: const Text("Third Widget"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity =
                    _opacity == 1.0 ? 0.0 : 1.0; // Toggle all widget visibility
              });
            },
            child: const Text("Fade All"),
          ),
        ],
      ),
    );
  }
}
