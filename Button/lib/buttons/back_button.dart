import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackButton(
      onPressed: () {
        // Action when the back button is pressed
        print('Back button pressed');
        // Custom navigation logic can be added here, if necessary
      },
      color: Colors.red, // Color of the back arrow icon
    );
  }
}
