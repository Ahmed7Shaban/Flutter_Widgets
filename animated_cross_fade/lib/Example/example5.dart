import 'package:flutter/material.dart';

class ThemeSwitcher extends StatefulWidget {
  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool _isDayMode = true;

  void _toggleTheme() {
    setState(() {
      _isDayMode = !_isDayMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.yellow, // Day mode (yellow color)
              child: const Center(
                  child: Text('Day Mode', style: TextStyle(fontSize: 24))),
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey, // Night mode (blue-grey color)
              child: const Center(
                  child: Text('Night Mode',
                      style: TextStyle(fontSize: 24, color: Colors.white))),
            ),
            crossFadeState: _isDayMode
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
            sizeCurve: Curves.easeInOut,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleTheme,
            child: Text(
                _isDayMode ? 'Switch to Night Mode' : 'Switch to Day Mode'),
          ),
        ],
      ),
    );
  }
}
