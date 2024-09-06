import 'package:flutter/material.dart';

class Example6 extends StatefulWidget {
  @override
  _Example6State createState() => _Example6State();
}

class _Example6State extends State<Example6> {
  bool _isMoved = false;

  void _togglePosition() {
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
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              top: _isMoved ? 200.0 : 100.0,
              left: _isMoved ? 200.0 : 100.0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: _togglePosition,
                child: const Text('Toggle Position'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
