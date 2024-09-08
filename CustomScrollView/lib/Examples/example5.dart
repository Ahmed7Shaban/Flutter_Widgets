import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.amber[100 * (index % 9)],
                  height: 100.0,
                  child: Center(child: Text('Padded Item $index')),
                );
              },
              childCount: 5,
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Center(
            child: Text(
              'This fills the remaining space',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
