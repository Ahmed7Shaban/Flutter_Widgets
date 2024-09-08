import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Nested CustomScrollView'),
              pinned: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://flutter.dev/images/catalog-widget-placeholder.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    height: 100.0,
                    color: Colors.lightBlue[100 * (index % 9)],
                    child: Center(child: Text('Item $index')),
                  );
                },
                childCount: 10, // Number of items in the nested scrollable list
              ),
            ),
          ],
        ));
  }
}
