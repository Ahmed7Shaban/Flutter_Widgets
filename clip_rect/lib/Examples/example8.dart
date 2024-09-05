import 'package:flutter/material.dart';

class ClipBehaviorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Example with Clip.none
        Container(
          color: Colors.green,
          width: 150,
          height: 150,
          child: ClipRect(
            clipBehavior: Clip.none, // No clipping applied
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1.5, // Scale content beyond boundaries
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 100,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Example with Clip.hardEdge
        Container(
          color: Colors.blue,
          width: 150,
          height: 150,
          child: ClipRect(
            clipBehavior: Clip.hardEdge, // Sharp edge clipping
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1.5,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 100,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Example with Clip.antiAlias
        Container(
          color: Colors.red,
          width: 150,
          height: 150,
          child: ClipRect(
            clipBehavior: Clip.antiAlias, // Smooth edge clipping
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1.5,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 100,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Example with Clip.antiAliasWithSaveLayer
        Container(
          color: Colors.purple,
          width: 150,
          height: 150,
          child: ClipRect(
            clipBehavior:
                Clip.antiAliasWithSaveLayer, // Smooth edges + save layer
            child: Align(
              alignment: Alignment.topLeft,
              widthFactor: 1.5,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
