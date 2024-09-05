import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://fps.cdnpk.net/images/home/subhome-ai.webp?w=649&h=649",
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover, // Make the image cover the whole screen
        ),
        const Positioned(
          bottom: 20,
          left: 20,
          child: Text(
            'Sample Text Overlay',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
