import 'package:flutter/material.dart';

class CreditDropDown extends StatefulWidget {
  @override
  _CreditDropDownState createState() => _CreditDropDownState();
}

class _CreditDropDownState extends State<CreditDropDown> {
  String dropdownValue = '1';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          '4',
          '3',
          '2',
          '1',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
      ),
    );
  }
}
