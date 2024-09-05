import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: Align(
            alignment: Alignment.centerRight,
            widthFactor: 0.5, // Clip the width to half
            child: Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
