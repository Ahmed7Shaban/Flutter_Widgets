import 'package:flutter/material.dart';

class ProfilePictureSwitcher extends StatefulWidget {
  @override
  _ProfilePictureSwitcherState createState() => _ProfilePictureSwitcherState();
}

class _ProfilePictureSwitcherState extends State<ProfilePictureSwitcher> {
  bool _showFirstPicture = true;

  void _toggleProfilePicture() {
    setState(() {
      _showFirstPicture = !_showFirstPicture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            secondChild: const CircleAvatar(
              radius: 50,
              backgroundImage:
                  NetworkImage('https://via.placeholder.com/150/0000FF'),
            ),
            crossFadeState: _showFirstPicture
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleProfilePicture,
            child: const Text('Switch Profile Picture'),
          ),
        ],
      ),
    );
  }
}
