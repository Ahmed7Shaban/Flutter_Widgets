import 'package:flutter/material.dart';

class QuizAnswerReveal extends StatefulWidget {
  @override
  _QuizAnswerRevealState createState() => _QuizAnswerRevealState();
}

class _QuizAnswerRevealState extends State<QuizAnswerReveal> {
  bool _showQuestion = true;

  void _revealAnswer() {
    setState(() {
      _showQuestion = false; // Show answer after pressing the button
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: const Text(
              'What is the capital of France?',
              style: TextStyle(fontSize: 20),
            ),
            secondChild: const Text(
              'The capital of France is Paris.',
              style: TextStyle(fontSize: 20),
            ),
            crossFadeState: _showQuestion
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _revealAnswer,
            child: const Text('Reveal Answer'),
          ),
        ],
      ),
    );
  }
}
