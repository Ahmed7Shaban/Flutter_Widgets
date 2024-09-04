import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action to perform when the button is pressed
      },
      onLongPress: () {
        // Action to perform when the button is long-pressed
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        disabledBackgroundColor:
            Colors.grey.withOpacity(0.12), // Disabled color
        shadowColor: Colors.black, // Shadow color
        elevation: 5.0, // Elevation of the button
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 15.0), // Padding inside the button
        minimumSize: const Size(100, 50), // Minimum size of the button
        side: const BorderSide(
            color: Colors.red, width: 2.0), // Border properties
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ), // Text style
        tapTargetSize:
            MaterialTapTargetSize.shrinkWrap, // Reduce the target size
        animationDuration:
            const Duration(milliseconds: 200), // Duration for animations
        enableFeedback: true, // Haptic feedback
        alignment: Alignment.center, // Alignment of the child
        splashFactory: InkRipple.splashFactory, // Custom splash effect
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.thumb_up), // Icon inside the button
          SizedBox(width: 10), // Space between icon and text
          Text('Like'), // Text inside the button
        ],
      ),
    );
  }
}
/*

Explanation of Properties
onPressed: A callback function that defines the action to take when the button is pressed.

onLongPress: A callback function for when the button is long-pressed.

style: A ButtonStyle object that defines the overall appearance of the button.

primary: The background color of the button.
onPrimary: The color for the button's content (text and icons).
onSurface: The color to use when the button is disabled.
shadowColor: The color of the shadow under the button.
elevation: The elevation or depth of the button.
padding: The padding inside the button.
minimumSize: The minimum size of the button.
side: The border around the button.
shape: The shape and corners of the button.
textStyle: The style of the text inside the button.
tapTargetSize: The size of the button's tap target.
animationDuration: The duration of any animations applied to the button.
enableFeedback: Whether or not the button should provide haptic feedback.
alignment: How the child widget is aligned within the button.
splashFactory: Defines the splash effect when the button is pressed.
child: The content inside the button, which can be text, icons, or other widgets. In this example, it contains both an Icon and a Text widget arranged in a row.
*/
