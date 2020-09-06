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
  String _currentGrade = 'A+';

  final List<TextEditingController> _gradeTextEditingControllers =
      List<TextEditingController>();
  final List<String> _gradesList = List<String>();
  final List<String> _creditsList = List<String>();

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

  List<DropdownMenuItem<String>> _grades = <String>[
    'A+',
    'A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D',
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

  void _addCredits(String value) {
    _creditsList.add(value);
    setState(() {});
  }

  void _addGrades(String value) {
    _gradesList.add(value);
    setState(() {});
  }

  List<Widget> _subjectFields = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _addSubjectField() { //meke awulak tynwa hadanna
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
              child: DropdownButton<String>(
                value: _currentGrade,
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
              setState(() {
                _currentGrade = newValue;
              });
            },
                items: _grades,
              ),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: _currentCredit,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      _currentCredit = newValue;
                    });
                  },
                  items: _credits,
                ),
              ),
            ),
          ],
        ),
      );
    setState(() {});
  }

  @override
  void initState() {
    _addSubjectField();
    _addSubjectField();
    _addSubjectField();
    super.initState();
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
