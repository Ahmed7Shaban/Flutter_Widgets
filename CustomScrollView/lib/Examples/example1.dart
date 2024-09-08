import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Sliver AppBar'),
            background: Image.network(
              'https://avatars.githubusercontent.com/u/120117456?s=400&u=6bc67968ab5ee04840773e9f3951ec23788e9df1&v=4',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                color: index.isOdd ? Colors.white : Colors.blueGrey[100],
                height: 100,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              );
            },
            childCount: 10, // Number of items in the list
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(10),
                color: Colors.teal[100 * (index % 9)],
                child: Center(
                  child: Text('Grid Item $index'),
                ),
              );
            },
            childCount: 9, // Number of grid items
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 columns
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
        ),
      ],
    );
  }
}
