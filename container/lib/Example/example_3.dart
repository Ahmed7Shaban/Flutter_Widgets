import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidgetExample3 extends StatelessWidget {
  const ContainerWidgetExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.brown,
        shape: BoxShape.circle,
      ),
    );
  }
}
