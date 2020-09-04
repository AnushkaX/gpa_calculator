import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/creditsdropdown.dart';
import 'package:gpa_calculator/widgets/gradesdropdown.dart';

class Overview extends StatefulWidget {
  Overview({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int _counter = 0;
  String _currentCredit = "1";

  final List<TextEditingController> _gradeTextEditingControllers =
      List<TextEditingController>();

  List<DropdownMenuItem<String>> _credits = <String>[
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
  }).toList();

  void _addNewSubjectInputField() {
    _gradeTextEditingControllers.add(TextEditingController());
    setState(() {});
  }

  List<Widget> _subjectFields = [
    Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Subject Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GradeDropDown(),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CreditDropDown(),
        )),
      ],
    ),
    Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Subject Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GradeDropDown(),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CreditDropDown(),
        )),
      ],
    ),
    Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Subject Name',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GradeDropDown(),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CreditDropDown(),
        )),
      ],
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _addSubjectField() {
    _addNewSubjectInputField();
    _subjectFields = List.from(_subjectFields)
      ..add(
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Subject Name',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GradeDropDown(),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                isExpanded: true,
                items: _credits,
                //onChanged: changeSelectedBrand,
                value: _currentCredit,
              ),
            )),
          ],
        ),
      );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GPA Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: _subjectFields,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {},
              child: const Text('Calculate', style: TextStyle(fontSize: 20)),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addSubjectField,
        tooltip: 'Add Field',
        child: Icon(Icons.add),
      ),
    );
  }
}
