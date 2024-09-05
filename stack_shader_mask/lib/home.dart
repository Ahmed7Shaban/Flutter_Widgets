import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(rect);
                },
                blendMode: BlendMode
                    .dstIn, // You can change this blend mode to achieve different effects
                child: Stack(
                  children: [
                    Container(
                      height: 500,
                      width: 400,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://avatars.githubusercontent.com/u/120117456?s=400&u=6bc67968ab5ee04840773e9f3951ec23788e9df1&v=4'),
                        ),
                        border: Border.all(color: Colors.black, width: 1.2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 200,
                          height: 100,
                          child: Text(
                            'Let’s discuss '
                            ' on something cool together',
                            style: TextStyle(
                              color: Colors.white, // Adjust text color
                              fontSize: 24, // Adjust font size
                              fontWeight: FontWeight.bold, // Adjust font weight
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
