import 'package:flutter/material.dart';

// Simple Name Input with Autocorrect and Capitalization
Widget NameInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Full Name',
      hintText: 'Enter your full name',
      icon: Icon(Icons.person),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    textCapitalization: TextCapitalization.words,
    autocorrect: true,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your name';
      }
      return null;
    },
    onSaved: (value) {
      // Save name value
    },
  );
}
//

//Number Input with Range Validation
Widget NumberInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Age',
      hintText: 'Enter your age',
      icon: Icon(Icons.cake),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your age';
      } else if (int.tryParse(value)! < 18 || int.tryParse(value)! > 99) {
        return 'Age must be between 18 and 99';
      }
      return null;
    },
    onSaved: (value) {
      // Save age value
    },
  );
}
//

//Password Input with Minimum Length Validation
Widget PasswordInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      icon: Icon(Icons.lock),
      border: OutlineInputBorder(),
    ),
    obscureText: true,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your password';
      } else if (value.length < 8) {
        return 'Password must be at least 8 characters long';
      }
      return null;
    },
    onSaved: (value) {
      // Save password value
    },
  );
}
// /// //////////////////////////////////////////////////////////

//Email Input with Pattern Matching
Widget EmailInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Email',
      hintText: 'Enter your email',
      icon: Icon(Icons.email),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your email';
      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
        return 'Please enter a valid email address';
      }
      return null;
    },
    onSaved: (value) {
      // Save email value
    },
  );
}
// /// //////////////////////////////////////////////////////////

// Phone Number Input with International Format Validation
Widget PhoneNumberInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Phone Number',
      hintText: 'Enter your phone number',
      icon: Icon(Icons.phone),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.phone,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your phone number';
      } else if (!RegExp(r'^\+[1-9]\d{1,14}$').hasMatch(value)) {
        return 'Please enter a valid phone number (e.g., +1234567890)';
      }
      return null;
    },
    onSaved: (value) {
      // Save phone number value
    },
  );
}
// /// //////////////////////////////////////////////////////////

//Multiline Text Input
Widget MultilineTextInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Address',
      hintText: 'Enter your address',
      icon: Icon(Icons.home),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.multiline,
    maxLines: 4, // Allows up to 4 lines of input
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your address';
      }
      return null;
    },
    onSaved: (value) {
      // Save address value
    },
  );
}
// /// //////////////////////////////////////////////////////////

//Numeric Input with Decimal Point and Currency
Widget NumericInput() {
  return TextFormField(
    decoration: const InputDecoration(
      labelText: 'Amount',
      hintText: 'Enter amount (e.g., 99.99)',
      icon: Icon(Icons.attach_money),
      border: OutlineInputBorder(),
    ),
    keyboardType: const TextInputType.numberWithOptions(decimal: true),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter an amount';
      } else if (double.tryParse(value) == null) {
        return 'Please enter a valid number';
      }
      return null;
    },
    onSaved: (value) {
      // Save amount value
    },
  );
}
// /// //////////////////////////////////////////////////////////

//Date Input with Read-Only Field and Date Picker
class DateInputField extends StatefulWidget {
  @override
  _DateInputFieldState createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
  TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateController,
      decoration: const InputDecoration(
        labelText: 'Date of Birth',
        hintText: 'Select your date of birth',
        icon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(),
      ),
      readOnly: true,
      onTap: () => _selectDate(context),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your date of birth';
        }
        return null;
      },
    );
  }
}
// /// //////////////////////////////////////////////////////////
