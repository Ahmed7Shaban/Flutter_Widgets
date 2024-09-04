import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.volume_up), // The icon to display
      onPressed: () {
        // Action when the button is pressed
        print('Icon button pressed');
      },

      iconSize: 40.0, // The size of the icon
      color: Colors.blue, // The color of the icon
      splashColor: Colors.red, // The color of the splash effect when tapped
      highlightColor: Colors.yellow, // The color when the button is held down
      hoverColor: Colors
          .green, // The color when hovering over the button (for web/desktop apps)
      focusColor: Colors.orange, // The color when the button is focused
      disabledColor: Colors.grey, // The color when the button is disabled
      tooltip: 'Increase volume', // A tooltip displayed on long hover
      alignment: Alignment.center, // Align the icon within the button
      padding: const EdgeInsets.all(8.0), // Padding inside the button
      splashRadius: 30.0, // Radius of the splash effect
      enableFeedback: true, // Enable haptic feedback when pressed
      autofocus: false, // Whether the button should focus automatically
      constraints: const BoxConstraints(
        minWidth: 80, minHeight: 80, // Custom constraints for button size
      ),
    );
  }
}
/*
Explanation of Properties
icon: The main icon displayed inside the button. In this case, we use Icons.volume_up to display a speaker icon.

onPressed: A callback function triggered when the button is pressed.

onLongPress: A callback function triggered when the button is long-pressed.

iconSize: Specifies the size of the icon in pixels. By default, it’s 24.0.

color: The color of the icon when it’s enabled and the button is pressed.

splashColor: The color of the ripple or splash effect when the button is tapped.

highlightColor: The color of the button when it's held down.

hoverColor: The color that appears when the user hovers over the button (applicable for web and desktop).

focusColor: The color used when the button is in focus (for keyboard interactions).

disabledColor: The color of the icon when the button is disabled (when onPressed is null).

tooltip: A message that appears when the user hovers over the button for an extended time (useful for accessibility and guidance).

alignment: Aligns the icon within the button's boundaries. The default is Alignment.center.

padding: Defines the space around the icon inside the button.

splashRadius: Sets the radius of the splash effect when the button is pressed.

enableFeedback: Controls whether the button should provide haptic feedback (vibration) when pressed.

autofocus: Determines whether the button should automatically receive focus when the screen loads.

constraints: Defines the minimum width and height of the button, allowing customization of the button's tap area.
 */
