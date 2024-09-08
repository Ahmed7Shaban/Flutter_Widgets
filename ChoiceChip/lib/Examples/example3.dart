import 'package:flutter/material.dart';

class DynamicChoiceChip extends StatefulWidget {
  @override
  _DynamicChoiceChipState createState() => _DynamicChoiceChipState();
}

class _DynamicChoiceChipState extends State<DynamicChoiceChip> {
  List<String> _choices = ["Flutter", "React Native", "Xamarin"];
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
