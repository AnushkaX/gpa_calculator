import 'package:flutter/material.dart';
import 'package:gpa_calculator/widgets/gradesdropdown.dart';
import 'package:gpa_calculator/widgets/overview.dart';

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
      home: Overview(),
    );
  }
}


