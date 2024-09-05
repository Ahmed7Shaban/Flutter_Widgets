import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5, // Clip the height to half of the image
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          ),
        ),
      ),
    );
  }
}
