import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidgetExample4 extends StatelessWidget {
  const ContainerWidgetExample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          // color: Colors.brown,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 20,
          )),
      child: const Center(child: Text('data')),
    );
  }
}
