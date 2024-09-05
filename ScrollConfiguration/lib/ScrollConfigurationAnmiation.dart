import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Scroll Animation')),
        body: AnimatedScrollExample(),
      ),
    );
  }
}

// Custom ScrollBehavior class to modify the scroll physics and behavior
class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    // Removes the glow effect that appears when you scroll past the edge
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    // Changes the scroll physics to a bouncing effect similar to iOS
    return const BouncingScrollPhysics();
  }
}

class AnimatedScrollExample extends StatefulWidget {
  @override
  _AnimatedScrollExampleState createState() => _AnimatedScrollExampleState();
}

class _AnimatedScrollExampleState extends State<AnimatedScrollExample>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize ScrollController to manage the scrolling of the ListView
    _scrollController = ScrollController();

    // Initialize AnimationController for handling animation duration and curve
    _animationController = AnimationController(
      duration: const Duration(seconds: 1), // Animation duration
      vsync: this,
    );

    // Define the animation curve for a smoother transition (ease-in-out)
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  // Method to animate scroll to a specific position
  void _scrollToPosition() {
    final scrollPosition = 300.0; // The position to scroll to

    // Use the animation to control the scroll behavior
    _animationController.forward(from: 0).then((_) {
      // Animate the scroll position
      _scrollController.animateTo(
        scrollPosition, // Target scroll position
        duration: const Duration(seconds: 2), // Duration of the animation
        curve: Curves.easeInOut, // Smooth curve for the animation
      );
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior:
          NoGlowScrollBehavior(), // Custom scroll behavior (no glow, bounce physics)
      child: Column(
        children: [
          ElevatedButton(
            onPressed:
                _scrollToPosition, // Button triggers the scroll animation
            child: const Text('Scroll to position 300'),
          ),
          Expanded(
            child: ListView.builder(
              controller:
                  _scrollController, // Attach the controller to ListView
              itemCount: 50, // A long list of items
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*
Explanation of the Animation:
ScrollController:

A ScrollController is attached to the ListView to control its scrolling behavior programmatically.
AnimationController:

AnimationController is used to manage the duration and progression of the scroll animation.
It runs for 1 second and defines how the animation should behave over time.
CurvedAnimation:

CurvedAnimation is used to apply a smooth curve (Curves.easeInOut) to the scroll animation, giving a natural and smoother scrolling effect.
Scroll to Specific Position:

The method _scrollToPosition triggers the scroll animation by animating the ScrollController to a specific position (300.0 in this example).
You can modify this value to scroll to different parts of the list.
Button to Trigger Animation:

An ElevatedButton is provided that, when pressed, triggers the scroll animation, scrolling the list to the desired position with a smooth transition.
How the Animation Works:
When you press the button, it triggers the animateTo() method of the ScrollController, which scrolls the ListView to position 300.0 over the course of 2 seconds using an easeInOut curve.
The bounce effect in scrolling is still present due to the BouncingScrollPhysics() in the custom scroll behavior.
Additional Improvements:
You can further enhance this by customizing the duration, curve, or position to fit your needs.
You can also apply this concept to different scrollable widgets like PageView, GridView, or SingleChildScrollView.
This example shows how to animate scrolling in Flutter while combining the power of ScrollConfiguration to adjust the scroll behavior!
 */
