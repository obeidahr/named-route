import 'package:flutter/material.dart';
import 'package:named_route/page1.dart';
import 'package:named_route/page2.dart';
import 'package:named_route/student.dart';

class Home extends StatelessWidget {
  static final route ='/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Go to page 1'),
              onPressed: (){
                Navigator.pushNamed((context), Page1.route,arguments: Student(name: 'obeida',age: 21));
              },
            ),
            RaisedButton(
              child: Text('Go to page 2'),
              onPressed: (){
                Navigator.pushNamed((context), Page2.route,arguments: Student(name: 'obeida',age: 25));
              },
            ),
          ],

        ),)
    );
  }
}