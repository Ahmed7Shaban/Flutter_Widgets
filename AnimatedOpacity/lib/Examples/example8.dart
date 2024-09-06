import 'package:flutter/material.dart';

class FadeOnScroll extends StatefulWidget {
  @override
  _FadeOnScrollState createState() => _FadeOnScrollState();
}

class _FadeOnScrollState extends State<FadeOnScroll> {
  double _opacity = 1.0;

  void _onScroll(double offset) {
    setState(() {
      _opacity = 1.0 - offset / 300; // Gradually fade as user scrolls
      _opacity = _opacity.clamp(0.0, 1.0); // Ensure it's between 0 and 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        _onScroll(scrollInfo.metrics.pixels); // Listen for scroll changes
        return true;
      },
      child: Stack(
        children: [
          AnimatedOpacity(
            opacity: _opacity, // Control opacity based on scroll
            duration: const Duration(milliseconds: 200),
            child: Image.network(
              'https://media.istockphoto.com/id/1979289147/photo/data-analysis-science-and-big-data-with-ai-technology-analyst-or-scientist-uses-a-computer.webp?a=1&b=1&s=612x612&w=0&k=20&c=IIZaVsQl6mMcOPgyPrVm8ZlCSBwKdwWju4TTnM7BM4Q=',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.only(top: 200),
            itemCount: 30,
            itemBuilder: (context, index) =>
                ListTile(title: Text('Item $index')),
          ),
        ],
      ),
    );
  }
}
