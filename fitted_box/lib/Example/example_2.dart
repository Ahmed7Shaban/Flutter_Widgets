import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 100,
      height: 100,
      color: Colors.black87,
      child: const FittedBox(
        child: Text(
          ' data data data ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 100,
          ),
        ),
      ),
    ));
  }
}
