import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/dropdown.dart';

class Overview extends StatefulWidget {
  Overview({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  int _counter = 0;

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
          child: DropDown(),
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
          child: DropDown(),
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
          child: DropDown(),
        )),
      ],
    ),
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void addSubjectField() {
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
              child: DropDown(),
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
        onPressed: addSubjectField,
        tooltip: 'Add Field',
        child: Icon(Icons.add),
      ),
    );
  }
}
