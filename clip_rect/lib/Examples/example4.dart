import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        clipper: MyCustomClipper(),
        child: Container(
          color: Colors.orange,
          width: 300,
          height: 300,
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 50, 200, 200); // Clip a rectangular section
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
