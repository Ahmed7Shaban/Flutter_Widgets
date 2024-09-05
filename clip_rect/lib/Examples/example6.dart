import 'package:flutter/material.dart';

class ClipRectDemo extends StatefulWidget {
  @override
  _ClipRectDemoState createState() => _ClipRectDemoState();
}

class _ClipRectDemoState extends State<ClipRectDemo> {
  double _clipHeightFactor = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        setState(() {
          _clipHeightFactor -= details.primaryDelta! / 300;
          _clipHeightFactor = _clipHeightFactor.clamp(0.0, 1.0);
        });
      },
      child: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: _clipHeightFactor, // Clip dynamically based on drag
            child: Container(
              color: Colors.green,
              height: 300,
              width: 300,
              child: const Center(
                  child: Text('Drag to Clip',
                      style: TextStyle(fontSize: 24, color: Colors.white))),
            ),
          ),
        ),
      ),
    );
  }
}
