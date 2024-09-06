import 'package:flutter/material.dart';

class AnimatedListScroll extends StatefulWidget {
  @override
  _AnimatedListScrollState createState() => _AnimatedListScrollState();
}

class _AnimatedListScrollState extends State<AnimatedListScroll> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();
  final List<String> _items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: _listKey,
            controller: _scrollController, // Attach ScrollController here
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: ListTile(title: Text(_items[index])),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final index = _items.length;
            _items.add('Item $index');
            _listKey.currentState!.insertItem(index);
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          },
          child: const Text('Add Item'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Dispose of the ScrollController
    super.dispose();
  }
}
