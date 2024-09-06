import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  @override
  _Example3State createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  bool _isMoved = false;

  void _toggleColor() {
    setState(() {
      _isMoved = !_isMoved;
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
              top: _isMoved ? 150.0 : 50.0,
              left: _isMoved ? 150.0 : 50.0,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: 100,
                height: 100,
                color: _isMoved ? Colors.green : Colors.orange,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: _toggleColor,
                child: const Text('Toggle Color'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
