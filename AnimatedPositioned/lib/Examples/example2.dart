import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  @override
  _Example2State createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  bool _isExpanded = false;

  void _toggleSize() {
    setState(() {
      _isExpanded = !_isExpanded;
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
            top: _isExpanded ? 100.0 : 200.0,
            left: _isExpanded ? 100.0 : 200.0,
            child: Container(
              width: _isExpanded ? 150 : 100,
              height: _isExpanded ? 150 : 100,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: _toggleSize,
              child: const Text('Toggle Size'),
            ),
          ),
        ],
      ),
    );
  }
}
