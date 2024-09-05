import 'package:flutter/material.dart';

class LoadingToContentExample extends StatefulWidget {
  @override
  _LoadingToContentExampleState createState() =>
      _LoadingToContentExampleState();
}

class _LoadingToContentExampleState extends State<LoadingToContentExample> {
  bool _isLoading = true;

  // Simulate a data fetch with a delay
  void _loadData() async {
    await Future.delayed(
        const Duration(seconds: 3)); // Simulate a 3-second delay
    setState(() {
      _isLoading = false; // Data is loaded, show the content
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData(); // Trigger data loading when the widget is first built
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedCrossFade(
        firstChild: const CircularProgressIndicator(), // Loading indicator
        secondChild: const Text('Content Loaded!',
            style: TextStyle(fontSize: 24)), // Loaded content
        crossFadeState: _isLoading
            ? CrossFadeState.showFirst // Show loading spinner first
            : CrossFadeState.showSecond, // Show content after loading
        duration: const Duration(seconds: 1), // Duration of the transition
        firstCurve: Curves.easeIn, // Smooth transition in for loading indicator
        secondCurve: Curves.easeOut, // Smooth transition out for loaded content
      ),
    );
  }
}
