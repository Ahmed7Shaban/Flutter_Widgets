import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blueAccent,
          ),
          Positioned(
            left: 100,
            top: 100,
            child: ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: 0.5, // Clip the width to half
                heightFactor: 0.5, // Clip the height to half
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  child: const Center(child: Text('Clipped')),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
