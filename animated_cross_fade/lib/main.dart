import 'package:flutter/material.dart';

import 'Example/example1.dart';
import 'Example/example2.dart';
import 'Example/example3.dart';
import 'Example/example4.dart';
import 'Example/example5.dart';
import 'Example/example6.dart';
import 'Example/example7.dart';
import 'Example/example8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedCrossFade Example')),
        body: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedCrossFadeExample(),
            const SizedBox(
              height: 60,
            ),
            LoadingToContentExample(),
            const SizedBox(
              height: 60,
            ),
            ProfilePictureSwitcher(),
            const SizedBox(
              height: 60,
            ),
            LoginSignUpForm(),
            const SizedBox(
              height: 60,
            ),
            ThemeSwitcher(),
            const SizedBox(
              height: 60,
            ),
            ReadMoreExample(),
            const SizedBox(
              height: 60,
            ),
            ProductImageGallery(),
            const SizedBox(
              height: 60,
            ),
            QuizAnswerReveal()
          ],
        ),
      ),
    );
  }
}
