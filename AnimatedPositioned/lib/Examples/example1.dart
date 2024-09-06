import 'package:flutter/material.dart';

class Example1 extends StatefulWidget {
  @override
  _Example1State createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  bool _isMoved = false;

  void _togglePosition() {
    setState(() {
      _isMoved = !_isMoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPositioned Example')),
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: _isMoved ? 200.0 : 0.0,
            left: _isMoved ? 200.0 : 0.0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: _togglePosition,
              child: const Text('Move'),
            ),
          ),
        ],
      ),
    );
  }
}
