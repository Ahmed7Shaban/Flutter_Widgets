import 'package:flutter/material.dart';

class FadeInNotificationBanner extends StatefulWidget {
  @override
  _FadeInNotificationBannerState createState() =>
      _FadeInNotificationBannerState();
}

class _FadeInNotificationBannerState extends State<FadeInNotificationBanner> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _opacity = 1.0; // Show notification banner after delay
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 2),
            child: Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(16),
              child: const Text("New Notification!",
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          const Expanded(child: Center(child: Text("Content Area"))),
        ],
      ),
    );
  }
}
