import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('CheckboxListTile Example')),
        body: MyCheckboxList(),
      ),
    );
  }
}

class MyCheckboxList extends StatefulWidget {
  @override
  _MyCheckboxListState createState() => _MyCheckboxListState();
}

class _MyCheckboxListState extends State<MyCheckboxList> {
  // Define a list of items with their checked state
  final List<Item> _items = [
    Item(title: 'Item 1', isChecked: false),
    Item(title: 'Item 2', isChecked: false),
    Item(title: 'Item 3', isChecked: false),
  ];

  // Toggle the checked state of an item
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
        return CheckboxListTile(
          title: Text(_items[index].title),
          value: _items[index].isChecked,
          onChanged: (bool? newValue) => _onItemChanged(newValue, index),
          activeColor: Colors.blue,
          checkColor: Colors.white,
          secondary: Icon(Icons.check_box),
          subtitle: Text('Subtitle for ${_items[index].title}'),
          dense: true,
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.all(16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          tileColor: Colors.grey[200],
          selected: _items[index].isChecked,
        );
      },
    );
  }
}

// Helper class to represent an item
class Item {
  String title;
  bool isChecked;

  Item({required this.title, required this.isChecked});
}
