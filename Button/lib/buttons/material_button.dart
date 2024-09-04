import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Action when the button is pressed
        print('MaterialButton pressed');
      },
      onLongPress: () {
        // Action when the button is long-pressed
        print('MaterialButton long pressed');
      },
      color: Colors.blue, // Background color of the button
      textColor: Colors.white, // Color of the text
      disabledColor:
          Colors.grey, // Background color when the button is disabled
      disabledTextColor:
          Colors.black54, // Text color when the button is disabled
      focusColor: Colors.orange, // Color of the button when focused
      hoverColor:
          Colors.green, // Color of the button when hovered (for web/desktop)
      highlightColor: Colors.red, // Color of the highlight effect when pressed
      splashColor: Colors
          .yellow, // Color of the splash effect when the button is pressed
      elevation: 8.0, // Elevation of the button
      focusElevation: 12.0, // Elevation when the button is focused
      hoverElevation: 12.0, // Elevation when the button is hovered
      highlightElevation: 4.0, // Elevation when the button is highlighted
      disabledElevation: 0.0, // Elevation when the button is disabled
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Custom shape with rounded corners
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 8.0), // Padding inside the button
      minWidth: 200.0, // Minimum width of the button
      height: 50.0, // Height of the button
      materialTapTargetSize:
          MaterialTapTargetSize.shrinkWrap, // Size of the tap target
      clipBehavior:
          Clip.antiAlias, // Clipping behavior for the button’s content
      enableFeedback: true, // Whether to provide haptic feedback when pressed
      autofocus: false, // Whether the button should automatically gain focus
      child: const Text(
          'Material Button'), // Child widget, typically text or an icon
    );
  }
}
/*
Explanation of Properties
onPressed: Callback function triggered when the button is pressed.

onLongPress: Callback function triggered when the button is long-pressed.

color: Background color of the button.

textColor: Color of the text inside the button.

disabledColor: Background color of the button when it is disabled.

disabledTextColor: Color of the text when the button is disabled.

focusColor: Color applied to the button when it is focused.

hoverColor: Color of the button when hovered over (for web/desktop).

highlightColor: Color of the highlight effect when the button is pressed.

splashColor: Color of the splash effect when the button is pressed.

elevation: The elevation (shadow depth) of the button.

focusElevation: The elevation when the button is focused.

hoverElevation: The elevation when the button is hovered.

highlightElevation: The elevation when the button is highlighted.

disabledElevation: The elevation when the button is disabled.

shape: Defines the shape of the button using ShapeBorder. In this case, it uses RoundedRectangleBorder for rounded corners.

padding: Internal padding of the button's content.

minWidth: Minimum width of the button.

height: Height of the button.

materialTapTargetSize: Defines the size of the tap target area. MaterialTapTargetSize.shrinkWrap sizes the button to fit its child.

clipBehavior: Controls the clipping behavior for the button's content. Clip.antiAlias ensures smooth edges.

enableFeedback: Controls whether haptic feedback is provided when the button is pressed.

autofocus: Whether the button should automatically gain focus when the widget is built.

child: The widget to display inside the button, such as Text or an Icon.
 */
