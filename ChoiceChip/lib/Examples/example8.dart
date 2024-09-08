import 'package:flutter/material.dart';

class ChoiceChipGroupExample extends StatefulWidget {
  @override
  _ChoiceChipGroupExampleState createState() => _ChoiceChipGroupExampleState();
}

class _ChoiceChipGroupExampleState extends State<ChoiceChipGroupExample> {
  List<String> _choices = ["Apple", "Banana", "Orange", "Mango"];
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
            children: _choices.map((choice) {
              return ChoiceChip(
                label: Text(choice),
                selected: _selectedChoice == choice,
                onSelected: (bool selected) {
                  setState(() {
                    _selectedChoice = selected ? choice : 'None';
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
