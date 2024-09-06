import 'package:flutter/material.dart';

class FadeProfileImage extends StatefulWidget {
  @override
  _FadeProfileImageState createState() => _FadeProfileImageState();
}

class _FadeProfileImageState extends State<FadeProfileImage> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity, // Control the visibility of image
          duration: const Duration(seconds: 1),
          child: const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle fade
          });
        },
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
