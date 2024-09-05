import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.blue, // Base container
        ),
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red, // Positioned container on top
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.green, // Another positioned container
          ),
        ),
      ],
    );
  }
}
