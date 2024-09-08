import 'package:flutter/material.dart';

class ChoiceChipExample extends StatefulWidget {
  @override
  _ChoiceChipExampleState createState() => _ChoiceChipExampleState();
}

class _ChoiceChipExampleState extends State<ChoiceChipExample> {
  String _selectedChoice = "None";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Selected: $_selectedChoice"),
          Wrap(
            spacing: 8.0,
            children: [
              ChoiceChip(
                label: const Text('Option 1'),
                selected: _selectedChoice == 'Option 1',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Option 1' : 'None';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('Option 2'),
                selected: _selectedChoice == 'Option 2',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Option 2' : 'None';
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
