import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/dropdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPA Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'GPA Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<Widget> _subjectFields = [
    Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: TextFormField(
              controller: _controller,
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
      body: ListView(
        children: _subjectFields,
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Enter your grades ',
      //       ),
      //       ListView(
      //         children: _subjectFields,
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: addSubjectField,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
