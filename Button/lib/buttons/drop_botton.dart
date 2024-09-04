import 'package:flutter/material.dart';

class DropBotton extends StatelessWidget {
  const DropBotton({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedValue = 'Item 1';
    return DropdownButton<String>(
      value: selectedValue, // The currently selected item
      onChanged: (String? newValue) {
        // Action when a new item is selected
        if (newValue != null) {
          selectedValue = newValue;
          print('Selected: $selectedValue');
        }
      },
      items:
          <String>['Item 1', 'Item 2', 'Item 3', 'Item 4'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      icon: const Icon(
          Icons.arrow_downward), // Icon displayed to the right of the button
      iconSize: 24, // Size of the dropdown icon
      iconEnabledColor: Colors.blue, // Color of the icon when enabled
      iconDisabledColor: Colors.grey, // Color of the icon when disabled
      underline: Container(
        height: 2,
        color: Colors.blue, // Custom underline for the dropdown
      ),
      isExpanded: true, // Whether the dropdown should take up the full width
      dropdownColor: Colors.white, // Background color of the dropdown list
      style: const TextStyle(
        color: Colors.black, // Text style for the dropdown items
        fontSize: 16,
      ),
      selectedItemBuilder: (BuildContext context) {
        return <String>['Item 1', 'Item 2', 'Item 3', 'Item 4']
            .map((String value) {
          return Text(
            value,
            style: const TextStyle(
              color: Colors.blue, // Custom text style for the selected item
              fontWeight: FontWeight.bold,
            ),
          );
        }).toList();
      },
      elevation: 8, // Elevation of the dropdown menu
      focusColor: Colors.orange, // Color of the dropdown when it's focused
      autofocus:
          false, // Whether the dropdown should automatically focus when built
      disabledHint:
          const Text('Disabled'), // Hint text when the dropdown is disabled
      hint:
          const Text('Select an item'), // Default text when no item is selected
      borderRadius: BorderRadius.circular(8), // Rounding the dropdown edges
      alignment: Alignment
          .centerLeft, // Aligns the selected item text within the button
    );
  }
}

/*
Explanation of Properties
value: The currently selected value of the dropdown. It must match one of the items in the dropdown.

onChanged: A callback triggered when the user selects a different item. This changes the value to reflect the new selection.

items: The list of options available in the dropdown. Each item should be wrapped in a DropdownMenuItem.

icon: Custom icon displayed to the right of the dropdown, typically an arrow pointing down.

iconSize: Size of the dropdown arrow icon.

iconEnabledColor: Color of the icon when the dropdown is enabled.

iconDisabledColor: Color of the icon when the dropdown is disabled.

underline: Customizes the underline below the dropdown button. In this case, a colored Container is used.

isExpanded: When set to true, the dropdown button will expand to fill the available width.

dropdownColor: Sets the background color of the dropdown list.

style: Defines the text style (color, size, weight) for the dropdown items.

selectedItemBuilder: A builder that returns a custom widget to display the selected item. This allows you to style the selected item differently from the dropdown list.

elevation: The elevation (depth) of the dropdown menu when it's open.

focusColor: The color of the dropdown button when it gains focus (for keyboard or accessibility use).

autofocus: Whether the dropdown button should automatically gain focus when the screen loads.

disabledHint: Text or widget displayed when the dropdown is disabled (i.e., when onChanged is null).

hint: Text displayed in the dropdown button when no value is selected.

borderRadius: Sets the border radius of the dropdown menu to create rounded edges.

alignment: Aligns the selected item inside the button. By default, it's aligned to the left.
 */
