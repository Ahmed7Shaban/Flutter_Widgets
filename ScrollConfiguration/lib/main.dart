import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Scroll Configuration')),
        body: CustomScrollBehaviorExample(),
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
    return BouncingScrollPhysics();
  }
}

// Example widget that uses the ScrollConfiguration to solve specific issues
class CustomScrollBehaviorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      // Apply custom scroll behavior defined in NoGlowScrollBehavior
      behavior: NoGlowScrollBehavior(),
      child: ListView.builder(
        // This is a long list of items to scroll through
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

/*
Explanation of the Example
Custom Scroll Behavior (NoGlowScrollBehavior):

This custom class extends ScrollBehavior and overrides two methods to control how scrolling behaves.

Removing Glow Effect:

When you scroll past the edges of a scrollable area, Flutter shows a glow effect by default. The buildViewportChrome method is overridden to remove this glow effect (common on Android devices). The child widget is returned without modification to remove the glow.
Changing Scroll Physics:

The getScrollPhysics method is overridden to change the default scrolling behavior. Here, we use BouncingScrollPhysics, which adds a bounce effect when scrolling past the edges, mimicking iOS-style scrolling. You can easily swap this for ClampingScrollPhysics for a more Android-like behavior.
Solving Scroll Issues:

Problem: By default, scrollable areas in Flutter have a glow effect when you over-scroll (scroll past the top or bottom), which might not be desired in some designs.
Solution: Using ScrollConfiguration and the custom NoGlowScrollBehavior, we removed this glow effect while also adding a bounce effect to enhance the user experience.
Using ScrollConfiguration:

We wrap our ListView.builder in a ScrollConfiguration widget, applying the custom NoGlowScrollBehavior. This ensures the behavior is applied to the entire scrollable content.
Additional Customizations
Scroll Physics Customization: You can experiment with different types of scroll physics in the getScrollPhysics method:

ClampingScrollPhysics(): Default for Android (no bounce, hard stop).
AlwaysScrollableScrollPhysics(): Forces scroll even when content is smaller than the viewport.
NeverScrollableScrollPhysics(): Disables scrolling entirely.

 */
