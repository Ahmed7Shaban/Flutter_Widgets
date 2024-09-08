import 'package:flutter/material.dart';

class MultiSelectChoiceChip extends StatefulWidget {
  @override
  _MultiSelectChoiceChipState createState() => _MultiSelectChoiceChipState();
}

class _MultiSelectChoiceChipState extends State<MultiSelectChoiceChip> {
  List<String> _choices = ["Flutter", "React Native", "Xamarin"];
  List<String> _selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Selected: ${_selectedChoices.join(', ')}"),
          Wrap(
            spacing: 8.0,
            children: _choices.map((choice) {
              return ChoiceChip(
                label: Text(choice),
                selected: _selectedChoices.contains(choice),
                onSelected: (bool selected) {
                  setState(() {
                    selected
                        ? _selectedChoices.add(choice)
                        : _selectedChoices.remove(choice);
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
