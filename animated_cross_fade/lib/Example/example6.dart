import 'package:flutter/material.dart';

class ReadMoreExample extends StatefulWidget {
  @override
  _ReadMoreExampleState createState() => _ReadMoreExampleState();
}

class _ReadMoreExampleState extends State<ReadMoreExample> {
  bool _showFullText = false;

  void _toggleText() {
    setState(() {
      _showFullText = !_showFullText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AnimatedCrossFade(
            firstChild: const Text(
              'This is a short summary of the content.',
              style: TextStyle(fontSize: 16),
            ),
            secondChild: const Text(
              'This is the full content of the article. It includes much more detailed information and additional paragraphs that expand on the summary provided earlier.',
              style: TextStyle(fontSize: 16),
            ),
            crossFadeState: _showFullText
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _toggleText,
            child: Text(_showFullText ? 'Read Less' : 'Read More'),
          ),
        ],
      ),
    );
  }
}
