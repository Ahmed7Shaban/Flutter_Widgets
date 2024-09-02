import 'package:flutter/material.dart';

class ContainerWidgetExample6 extends StatelessWidget {
  const ContainerWidgetExample6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xff6ae792),
            width: 3.0,
          ),
          bottom: BorderSide(
            color: Color(0xff6ae792),
            width: 3.0,
          ),
        ),
      ),
      child: const Text(
        "C",
        style: TextStyle(fontSize: 34.0),
      ),
    );
  }
}
