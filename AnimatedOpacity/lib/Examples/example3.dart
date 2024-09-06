import 'package:flutter/material.dart';

class OpacityNetworkStatus extends StatefulWidget {
  @override
  _OpacityNetworkStatusState createState() => _OpacityNetworkStatusState();
}

class _OpacityNetworkStatusState extends State<OpacityNetworkStatus> {
  bool _isConnected = true; // Simulating network status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _isConnected ? 1.0 : 0.5, // Opacity changes with network
          duration: const Duration(seconds: 1),
          child: const Icon(
            Icons.network_wifi,
            size: 100,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isConnected = !_isConnected; // Toggle network status
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
