import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 150.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Sliver App Bar'),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100.0, // Each item has a fixed height of 100
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
            childCount: 20, // Number of list items
          ),
        ),
      ],
    );
  }
}
