import 'package:flutter/material.dart';

class ClipRectAnimation extends StatefulWidget {
  @override
  _ClipRectAnimationState createState() => _ClipRectAnimationState();
}

class _ClipRectAnimationState extends State<ClipRectAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ClipRect(
          child: Align(
            alignment: Alignment.center,
            heightFactor: _controller.value, // Animate clipping vertically
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        );
      },
    ));
  }
}
