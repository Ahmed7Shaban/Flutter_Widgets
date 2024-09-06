import 'package:flutter/material.dart';

class Example5 extends StatefulWidget {
  @override
  _Example5State createState() => _Example5State();
}

class _Example5State extends State<Example5> {
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
              duration: const Duration(seconds: 1),
              top: _isMoved ? 50.0 : 150.0,
              left: _isMoved ? 50.0 : 150.0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: _isMoved ? 200.0 : 300.0,
              left: _isMoved ? 200.0 : 300.0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: _togglePosition,
                child: const Text('Move Both'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
