import 'package:flutter/material.dart';

class FadeInOnLoad extends StatefulWidget {
  @override
  _FadeInOnLoadState createState() => _FadeInOnLoadState();
}

class _FadeInOnLoadState extends State<FadeInOnLoad> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _opacity = 1.0; // Fade-in after 2 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: _opacity, // Starts invisible, fades in
        duration: const Duration(seconds: 2),
        child: const Text(
          "Loading Complete!",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
