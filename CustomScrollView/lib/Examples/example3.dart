import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Non-sliver Widget at the Top',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: Colors.green[100 * (index % 9)],
                child: Center(child: Text('Grid $index')),
              );
            },
            childCount: 9,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Non-sliver Widget at the Bottom',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ],
    );
  }
}
