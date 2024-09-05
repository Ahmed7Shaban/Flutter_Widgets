import 'package:flutter/material.dart';

class LoginSignUpForm extends StatefulWidget {
  @override
  _LoginSignUpFormState createState() => _LoginSignUpFormState();
}

class _LoginSignUpFormState extends State<LoginSignUpForm> {
  bool _showLogin = true;

  void _toggleForm() {
    setState(() {
      _showLogin = !_showLogin;
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
            firstChild: _buildLoginForm(),
            secondChild: _buildSignUpForm(),
            crossFadeState: _showLogin
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleForm,
            child: Text(_showLogin ? 'Switch to Sign Up' : 'Switch to Login'),
          ),
        ],
      ),
    );
  }

  // Login form widget
  Widget _buildLoginForm() {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
      ],
    );
  }

  // Sign-up form widget
  Widget _buildSignUpForm() {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Full Name'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
      ],
    );
  }
}
