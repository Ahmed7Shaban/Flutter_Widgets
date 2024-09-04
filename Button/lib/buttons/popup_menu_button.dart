import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (int value) {
        // Action when an item is selected
        print('Selected: $value');
      },
      onCanceled: () {
        // Action when the menu is dismissed without selecting anything
        print('Menu dismissed');
      },
      tooltip: 'More options', // Tooltip when long-pressed or hovered
      initialValue: 2, // Preselects an item from the list
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<int>>[
          const PopupMenuItem<int>(
            value: 1,
            child: Text('Item 1'),
          ),
          const PopupMenuItem<int>(
            value: 2,
            child: Text('Item 2'),
          ),
          const PopupMenuItem<int>(
            value: 3,
            child: Text('Item 3'),
          ),
          const PopupMenuDivider(), // Divider between items
          const PopupMenuItem<int>(
            value: 4,
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert), // Custom icon for the button
      iconSize: 24.0, // Size of the icon
      iconColor: Colors.blue, // Color of the icon
      elevation: 8.0, // Elevation of the popup menu
      color: Colors.white, // Background color of the popup menu
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Rounding the popup menu edges
      ),
      padding:
          const EdgeInsets.all(8.0), // Padding inside the popup menu button
      offset:
          const Offset(0, 40), // Positioning the menu relative to the button
      enabled: true, // Whether the button is enabled or not
    );
  }
}
