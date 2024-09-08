import 'package:flutter/material.dart';

class ToggleableChoiceChip extends StatefulWidget {
  @override
  _ToggleableChoiceChipState createState() => _ToggleableChoiceChipState();
}

class _ToggleableChoiceChipState extends State<ToggleableChoiceChip> {
  String? _selectedChoice;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0,
        children: [
          ChoiceChip(
            label: const Text('Option 1'),
            selected: _selectedChoice == 'Option 1',
            onSelected: (bool selected) {
              setState(() {
                _selectedChoice = selected ? 'Option 1' : null;
              });
            },
          ),
          ChoiceChip(
            label: const Text('Option 2'),
            selected: _selectedChoice == 'Option 2',
            onSelected: (bool selected) {
              setState(() {
                _selectedChoice = selected ? 'Option 2' : null;
              });
            },
          ),
          ChoiceChip(
            label: const Text('Option 3'),
            selected: _selectedChoice == 'Option 3',
            onSelected: (bool selected) {
              setState(() {
                _selectedChoice = selected ? 'Option 3' : null;
              });
            },
          ),
        ],
      ),
    );
  }
}
