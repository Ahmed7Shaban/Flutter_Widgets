import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {
  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
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
                label: const Text('Red'),
                selectedColor: Colors.redAccent,
                selected: _selectedChoice == 'Red',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Red' : 'None';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('Green'),
                selectedColor: Colors.greenAccent,
                selected: _selectedChoice == 'Green',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Green' : 'None';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('Blue'),
                selectedColor: Colors.blueAccent,
                selected: _selectedChoice == 'Blue',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Blue' : 'None';
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
