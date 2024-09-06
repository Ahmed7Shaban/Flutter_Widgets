import 'package:flutter/material.dart';

class AnimatedAddList extends StatefulWidget {
  @override
  _AnimatedAddListState createState() => _AnimatedAddListState();
}

class _AnimatedAddListState extends State<AnimatedAddList> {
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
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: ListTile(title: Text(_items[index])),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final index = _items.length;
            _items.add('Item $index');
            _listKey.currentState!.insertItem(index);
          },
          child: const Text('Add Item'),
        ),
      ],
    );
  }
}
