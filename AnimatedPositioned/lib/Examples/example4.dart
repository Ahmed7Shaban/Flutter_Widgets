import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  @override
  _Example4State createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedPositioned Example')),
        body: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: _isVisible ? 100.0 : 300.0,
              left: _isVisible ? 100.0 : 300.0,
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: _toggleVisibility,
                child: const Text('Toggle Visibility'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
