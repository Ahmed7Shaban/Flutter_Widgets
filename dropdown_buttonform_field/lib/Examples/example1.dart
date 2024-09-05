import 'package:flutter/material.dart';

class DropdownFormFieldDemo extends StatefulWidget {
  @override
  _DropdownFormFieldDemoState createState() => _DropdownFormFieldDemoState();
}

class _DropdownFormFieldDemoState extends State<DropdownFormFieldDemo> {
  String? selectedValue;
  final List<String> items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Select an option',
              border: OutlineInputBorder(),
              icon: Icon(Icons.list),
              helperText: 'Choose one option from the dropdown',
            ),
            value: selectedValue,
            hint: const Text('Please select an option'),
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 30,
            isExpanded: true,
            elevation: 16,
            style: const TextStyle(color: Colors.blue, fontSize: 16),
            dropdownColor: Colors.blue[50],
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select an option';
              }
              return null;
            },
            onSaved: (value) {
              selectedValue = value;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (Form.of(context)?.validate() ?? false) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Form is valid')),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
