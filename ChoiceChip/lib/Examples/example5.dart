import 'package:flutter/material.dart';

class IconChoiceChip extends StatefulWidget {
  @override
  _IconChoiceChipState createState() => _IconChoiceChipState();
}

class _IconChoiceChipState extends State<IconChoiceChip> {
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
                avatar: const Icon(Icons.favorite, color: Colors.red),
                label: const Text('Love'),
                selected: _selectedChoice == 'Love',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Love' : 'None';
                  });
                },
              ),
              ChoiceChip(
                avatar: const Icon(Icons.thumb_up, color: Colors.blue),
                label: const Text('Like'),
                selected: _selectedChoice == 'Like',
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? 'Like' : 'None';
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
