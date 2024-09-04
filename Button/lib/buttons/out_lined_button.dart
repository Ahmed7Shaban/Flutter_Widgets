import 'package:flutter/material.dart';

class OutLinedButtonWidget extends StatelessWidget {
  const OutLinedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Action when the button is pressed
      },
      onLongPress: () {
        // Action when the button is long-pressed
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        disabledForegroundColor:
            Colors.grey.withOpacity(0.38), // Color when the button is disabled
        backgroundColor:
            Colors.transparent, // Background color (typically transparent)
        side: const BorderSide(
            color: Colors.red, width: 2.0), // Border color and width
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 15.0), // Padding inside the button
        minimumSize: const Size(120, 50), // Minimum size of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ), // Text style
        tapTargetSize: MaterialTapTargetSize
            .shrinkWrap, // Reduces the size of the tap target
        animationDuration:
            const Duration(milliseconds: 200), // Duration of animations
        elevation: 0, // Outlined buttons have no elevation
        enableFeedback: true, // Haptic feedback when the button is pressed
        alignment: Alignment.center, // Aligning the child within the button
        shadowColor: Colors.transparent, // No shadow for outlined buttons
        splashFactory: InkRipple.splashFactory, // Custom splash effect
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add), // Icon inside the button
          SizedBox(width: 8), // Space between icon and text
          Text('Add Item'), // Text inside the button
        ],
      ),
    );
  }
}

/*
Explanation of Properties
onPressed: Defines the action that occurs when the button is pressed.

onLongPress: A callback that defines the action when the button is long-pressed.

style: A ButtonStyle object to customize the look of the OutlinedButton.

primary: The color for the button's content (text and icons).
onSurface: The color when the button is in a disabled state.
backgroundColor: The background color of the button (usually transparent for outlined buttons).
side: Defines the border of the button (color and width).
padding: Padding inside the button for space around the content.
minimumSize: The minimum size the button can be.
shape: The shape and rounding of the button's edges (here, rounded corners).
textStyle: Defines the text style, including size and weight.
tapTargetSize: Reduces the default size of the button's tappable area.
animationDuration: Time for animation effects like color changes.
elevation: Typically set to 0 for OutlinedButton as it doesn’t have elevation.
enableFeedback: Enables haptic feedback on press.
alignment: Aligns the content (text and icon) within the button.
shadowColor: Since OutlinedButton has no shadow, this is typically set to transparent.
splashFactory: Defines the splash effect (when the button is pressed) to use a ripple effect.
child: The content of the button. In this example, the Row widget is used to arrange an Icon and Text horizontally inside the button.
*/
