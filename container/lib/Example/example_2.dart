import 'package:flutter/material.dart';

class ContainerWidgetExample2 extends StatelessWidget {
  const ContainerWidgetExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.brown,
      ),
    );
  }
}
