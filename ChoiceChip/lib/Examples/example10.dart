import 'package:flutter/material.dart';

class CustomStyledChoiceChip extends StatefulWidget {
  @override
  _CustomStyledChoiceChipState createState() => _CustomStyledChoiceChipState();
}

class _CustomStyledChoiceChipState extends State<CustomStyledChoiceChip> {
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
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                label: const Text('Styled Chip 1'),
                selected: _selectedChoice == 'Styled Chip 1',
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.blue, width: 2)),
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Styled Chip 1' : 'None';
                  });
                },
              ),
              ChoiceChip(
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                label: const Text('Styled Chip 2'),
                selected: _selectedChoice == 'Styled Chip 2',
                shape: const StadiumBorder(
                    side: BorderSide(color: Colors.red, width: 2)),
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Styled Chip 2' : 'None';
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
