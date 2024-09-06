import 'package:flutter/material.dart';

class FABOpacityChange extends StatefulWidget {
  @override
  _FABOpacityChangeState createState() => _FABOpacityChangeState();
}

class _FABOpacityChangeState extends State<FABOpacityChange> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedOpacity(
        opacity: _opacity, // Change opacity of FAB
        duration: const Duration(seconds: 1),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _opacity = _opacity == 1.0 ? 0.0 : 1.0; // Toggle fade
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: const Center(child: Text("Tap FAB to Fade")),
    );
  }
}
