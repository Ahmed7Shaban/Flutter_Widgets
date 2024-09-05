import 'package:flutter/material.dart';

Widget MovesTheWidget20pixels() {
  return Transform.translate(
    offset: const Offset(20.0,
        50.0), // Moves the widget 20 pixels to the right and 50 pixels down
    child: Container(
      width: 100,
      height: 100,
      color: Colors.black,
    ),
  );
}

Widget ScalesTheWidgetTo150() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Transform.scale(
      scale: 1.5, // Scales the widget to 150% of its original size
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
  );
}

Widget RotatesTheWidget() {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Transform.rotate(
        angle: 0.5, // Rotates the widget by 0.5 radians
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ));
}

Widget SkewsTheWidget() {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Transform(
        transform: Matrix4.skewX(
            0.3), // Skews the widget by 0.3 radians along both axes
        child: Container(
          width: 100,
          height: 100,
          color: Colors.orange,
        ),
      ));
}

Widget Example() {
  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Transform(
        transform: Matrix4.identity()
          ..translate(20.0, 50.0) // Translate
          ..scale(1.5) // Scale
          ..rotateZ(0.5), // Rotate
        child: Container(
          width: 100,
          height: 100,
          color: Colors.purple,
        ),
      ));
}
