import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  const CloseButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CloseButton(
      onPressed: () {
        // Action when the close button is pressed
        print('Close button pressed');
        // Custom close logic can be added here, if necessary
      },
      color: Colors.red, // Color of the close icon
    );
  }
}
