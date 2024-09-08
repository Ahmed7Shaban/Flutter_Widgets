import 'package:flutter/material.dart';

class DisabledChoiceChipExample extends StatefulWidget {
  @override
  _DisabledChoiceChipExampleState createState() =>
      _DisabledChoiceChipExampleState();
}

class _DisabledChoiceChipExampleState extends State<DisabledChoiceChipExample> {
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
                label: const Text('Enabled 1'),
                selected: _selectedChoice == 'Enabled 1',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Enabled 1' : 'None';
                  });
                },
              ),
              const ChoiceChip(
                label: Text('Disabled 2'),
                selected: false,
                onSelected:
                    null, // Disable the chip by passing null to onSelected
              ),
              ChoiceChip(
                label: const Text('Enabled 3'),
                selected: _selectedChoice == 'Enabled 3',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Enabled 3' : 'None';
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
