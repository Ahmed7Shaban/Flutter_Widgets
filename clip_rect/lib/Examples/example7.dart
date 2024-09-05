import 'package:flutter/material.dart';

class ClipRectOpacityDemo extends StatefulWidget {
  @override
  _ClipRectOpacityDemoState createState() => _ClipRectOpacityDemoState();
}

class _ClipRectOpacityDemoState extends State<ClipRectOpacityDemo> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              heightFactor: 1.0, // Clip the entire widget
              child: AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: _opacity,
                child: Container(
                  color: Colors.purple,
                  height: 200,
                  width: 200,
                  child: const Center(
                      child: Text('Fade Out',
                          style: TextStyle(fontSize: 24, color: Colors.white))),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _opacity = _opacity == 1.0 ? 0.0 : 1.0;
              });
            },
            child: const Text('Animate Opacity'),
          ),
        ],
      ),
    );
  }
}
