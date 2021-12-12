import 'package:flutter/material.dart';
import 'package:named_route/student.dart';

class Page1 extends StatelessWidget {
  static final route='/page1';
  @override
  Widget build(BuildContext context) {
    Student student = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Name ${student.name}'),
            Text('Age ${student.age}')
          ],

        ),)
    );
  }
}