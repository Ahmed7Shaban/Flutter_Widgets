import 'package:flutter/material.dart';

import 'Examples/example1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropdownButtonFormField Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DropdownButtonFormField Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DropdownFormFieldDemo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
