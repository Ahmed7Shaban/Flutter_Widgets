import 'package:flutter/material.dart';

class FloatingActionsButtonWidget extends StatelessWidget {
  const FloatingActionsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Action when the button is pressed
        print('FloatingActionButton pressed');
      },
      tooltip: 'Add', // A tooltip that appears when long-pressed or hovered
      backgroundColor: Colors.blue, // Background color of the button
      foregroundColor: Colors.white, // Icon color inside the button
      hoverColor: Colors
          .green, // Color when the button is hovered over (for web/desktop)
      focusColor: Colors.orange, // Color when the button is focused
      splashColor: Colors.red, // Splash effect color when tapped
      elevation: 6.0, // Elevation of the button (depth)
      hoverElevation: 12.0, // Elevation when the button is hovered over
      focusElevation: 10.0, // Elevation when the button is focused
      disabledElevation: 0.0, // Elevation when the button is disabled
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(15.0), // Custom shape (rounded rectangle)
      ),
      isExtended:
          true, // Whether the button is extended (displaying text alongside the icon)

      enableFeedback: true, // Enables haptic feedback when pressed
      autofocus: false, // Autofocus on the button when the screen loads
      materialTapTargetSize:
          MaterialTapTargetSize.padded, // Size of the tap target
      heroTag: 'fab_tag', // Tag for hero animations between screens
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add), // Icon inside the button
          SizedBox(width: 8), // Space between icon and text (if extended)
          Text('Add Item'), // Text inside the button (when extended)
        ],
      ),
    );
  }
}
