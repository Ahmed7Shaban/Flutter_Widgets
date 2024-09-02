import 'package:flutter/material.dart';

class ContainerWidgetExample5 extends StatelessWidget {
  const ContainerWidgetExample5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.deepOrange,
            width: 5.0,
          ),
          right: BorderSide(
            color: Colors.brown,
            width: 15.0,
          ),
          top: BorderSide(
            color: Colors.indigoAccent,
            width: 20.0,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 8.0,
          ),
        ),
      ),
      child: const Text(
        "Date",
        style: TextStyle(fontSize: 34.0),
      ),
    );
  }
}
