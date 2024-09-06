import 'package:flutter/material.dart';

class AnimatedRemoveList extends StatefulWidget {
  @override
  _AnimatedRemoveListState createState() => _AnimatedRemoveListState();
}

class _AnimatedRemoveListState extends State<AnimatedRemoveList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: _listKey,
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
            if (_items.isNotEmpty) {
              final index = _items.length - 1;
              _removeItem(index);
            }
          },
          child: const Text('Remove Last Item'),
        ),
      ],
    );
  }

  void _removeItem(int index) {
    final removedItem = _items[index];
    _items.removeAt(index);

    // Remove the item from the list with an animation
    _listKey.currentState!.removeItem(
      index,
      (context, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            child: ListTile(title: Text(removedItem)),
          ),
        );
      },
      duration: const Duration(milliseconds: 300), // Duration of the animation
    );
  }
}
