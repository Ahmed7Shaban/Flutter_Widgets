import 'package:flutter/material.dart';

class FadeOutErrorMessage extends StatefulWidget {
  @override
  _FadeOutErrorMessageState createState() => _FadeOutErrorMessageState();
}

class _FadeOutErrorMessageState extends State<FadeOutErrorMessage> {
  double _opacity = 1.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _opacity = 0.0; // Auto fade-out after 5 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: const Duration(seconds: 2),
        child: const Text(
          "Error occurred!",
          style: TextStyle(fontSize: 24, color: Colors.red),
        ),
      ),
    );
  }
}
