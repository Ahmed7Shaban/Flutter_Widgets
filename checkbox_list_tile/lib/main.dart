import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated CheckboxListTile Example')),
        body: MyAnimatedCheckboxList(),
      ),
    );
  }
}

class MyAnimatedCheckboxList extends StatefulWidget {
  @override
  _MyAnimatedCheckboxListState createState() => _MyAnimatedCheckboxListState();
}

class _MyAnimatedCheckboxListState extends State<MyAnimatedCheckboxList> {
  final List<Item> _items = [
    Item(title: 'Item 1', isChecked: false),
    Item(title: 'Item 2', isChecked: false),
    Item(title: 'Item 3', isChecked: false),
  ];

  void _onItemChanged(bool? newValue, int index) {
    setState(() {
      _items[index].isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: CheckboxListTile(
            key: ValueKey<bool>(_items[index].isChecked),
            title: Text(_items[index].title),
            value: _items[index].isChecked,
            onChanged: (bool? newValue) => _onItemChanged(newValue, index),
            activeColor: Colors.blue,
            checkColor: Colors.white,
            secondary: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _items[index].isChecked ? 30.0 : 24.0,
              height: _items[index].isChecked ? 30.0 : 24.0,
              child: const Icon(Icons.check_box, color: Colors.blue),
            ),
            subtitle: Text('Subtitle for ${_items[index].title}'),
            dense: true,
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: const EdgeInsets.all(16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            tileColor:
                _items[index].isChecked ? Colors.blue[50] : Colors.grey[200],
            selected: _items[index].isChecked,
          ),
        );
      },
    );
  }
}

class Item {
  String title;
  bool isChecked;

  Item({required this.title, required this.isChecked});
}
