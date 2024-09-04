import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Action when the button is pressed
      },
      onLongPress: () {
        // Action when the button is long-pressed
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        disabledForegroundColor:
            Colors.grey.withOpacity(0.38), // Color when the button is disabled
        backgroundColor:
            Colors.transparent, // Background color (usually transparent)
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 15.0), // Padding inside the button
        minimumSize: const Size(100, 50), // Minimum size of the button
        side: const BorderSide(
            color: Colors.red, width: 2.0), // Border around the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // Rounded corners
        ),
        textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ), // Text style
        tapTargetSize: MaterialTapTargetSize
            .shrinkWrap, // Reduces the size of the tap target
        animationDuration:
            const Duration(milliseconds: 200), // Duration for animations
        enableFeedback: true, // Haptic feedback when the button is pressed
        alignment: Alignment.center, // Alignment of the child within the button
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.send), // Icon inside the button
          SizedBox(width: 10), // Space between icon and text
          Text('Send'), // Text inside the button
        ],
      ),
    );
  }
}
/*
Explanation of Properties
onPressed: A callback that defines what happens when the button is pressed.

onLongPress: A callback that defines what happens when the button is long-pressed.

style: A ButtonStyle object that allows customization of the appearance.

primary: The color of the text and icon in the button.
onSurface: The color when the button is disabled.
backgroundColor: The background color of the button (usually transparent for TextButton).
padding: The padding inside the button.
minimumSize: The minimum size of the button.
side: The border of the button.
shape: The shape of the button, including rounded corners.
textStyle: The style of the text inside the button.
tapTargetSize: Adjusts the size of the button's tap area.
animationDuration: The time it takes for the button animations to complete.
enableFeedback: Whether or not the button should provide haptic feedback.
alignment: Aligns the content inside the button.
child: The content inside the button, which can be a combination of text, icons, or other widgets. Here, a Row is used to arrange an Icon and Text side by side.
*/
