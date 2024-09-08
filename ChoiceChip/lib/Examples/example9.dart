import 'package:flutter/material.dart';

class AnimatedChoiceChip extends StatefulWidget {
  @override
  _AnimatedChoiceChipState createState() => _AnimatedChoiceChipState();
}

class _AnimatedChoiceChipState extends State<AnimatedChoiceChip> {
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
                label: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding:
                      EdgeInsets.all(_selectedChoice == 'Choice 1' ? 8.0 : 4.0),
                  child: const Text('Choice 1'),
                ),
                selected: _selectedChoice == 'Choice 1',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Choice 1' : 'None';
                  });
                },
              ),
              ChoiceChip(
                label: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding:
                      EdgeInsets.all(_selectedChoice == 'Choice 2' ? 8.0 : 4.0),
                  child: const Text('Choice 2'),
                ),
                selected: _selectedChoice == 'Choice 2',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Choice 2' : 'None';
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
