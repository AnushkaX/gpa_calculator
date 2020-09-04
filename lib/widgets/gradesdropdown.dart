import 'package:flutter/material.dart';

class GradeDropDown extends StatefulWidget {
  @override
  _GradeDropDownState createState() => _GradeDropDownState();
}

class _GradeDropDownState extends State<GradeDropDown> {
  String dropdownValue = 'A+';
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
        items: <String>['A+', 'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 'C-', 'D',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, textAlign: TextAlign.center,),
          );
        }).toList(),
      ),
    );
  }
}
