import 'package:flutter/material.dart';

class AnimatedListTransition extends StatefulWidget {
  @override
  _AnimatedListTransitionState createState() => _AnimatedListTransitionState();
}

class _AnimatedListTransitionState extends State<AnimatedListTransition> {
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
              // Custom transition using a Tween
              final tween = Tween(begin: 0.0, end: 1.0);
              final opacityAnimation = tween.animate(animation);

              // Return widget with custom animation
              return FadeTransition(
                opacity: opacityAnimation,
                child: ScaleTransition(
                  scale: opacityAnimation,
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
          },
          child: const Text('Add Item'),
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

    // Remove item with custom animation
    _listKey.currentState!.removeItem(
      index,
      (context, animation) {
        // Custom transition using a Tween
        final tween = Tween(begin: 1.0, end: 0.0);
        final opacityAnimation = tween.animate(animation);

        return FadeTransition(
          opacity: opacityAnimation,
          child: ScaleTransition(
            scale: opacityAnimation,
            child: ListTile(title: Text(removedItem)),
          ),
        );
      },
      duration: const Duration(milliseconds: 300), // Duration of the animation
    );
  }
}
