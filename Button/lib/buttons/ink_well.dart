import 'package:flutter/material.dart';

class InkWellWidget extends StatelessWidget {
  const InkWellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Action when the InkWell is tapped
        print('InkWell tapped');
      },
      onDoubleTap: () {
        // Action when the InkWell is double-tapped
        print('InkWell double-tapped');
      },
      onLongPress: () {
        // Action when the InkWell is long-pressed
        print('InkWell long-pressed');
      },
      onTapDown: (TapDownDetails details) {
        // Action when the tap down event occurs
        print('Tap down at ${details.globalPosition}');
      },
      onTapCancel: () {
        // Action when the tap is canceled
        print('Tap canceled');
      },
      onTapUp: (TapUpDetails details) {
        // Action when the tap up event occurs
        print('Tap up at ${details.globalPosition}');
      },
      splashColor: Colors.blue.withOpacity(0.3), // Color of the splash effect
      highlightColor:
          Colors.blue.withOpacity(0.2), // Color of the highlight effect
      hoverColor: Colors.blue.withOpacity(
          0.1), // Color of the InkWell when hovered (for web/desktop)
      focusColor:
          Colors.blue.withOpacity(0.2), // Color of the InkWell when focused
      radius: 30.0, // Radius of the splash effect
      customBorder: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), // Custom shape with rounded corners
      ),
      splashFactory: InkRipple
          .splashFactory, // The splash factory to use for the ripple effect
      canRequestFocus: true, // Whether the InkWell can request focus
      enableFeedback: true, // Whether to provide haptic feedback when tapped
      child: Container(
        padding: const EdgeInsets.all(16.0), // Padding inside the InkWell
        decoration: BoxDecoration(
          color: Colors.blue, // Background color of the child
          borderRadius:
              BorderRadius.circular(8.0), // Rounded corners of the child
        ),
        child: const Text(
          'Tap Me',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 16.0, // Text size
          ),
        ),
      ),
    );
  }
}
