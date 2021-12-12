import 'package:flutter/material.dart';
import 'package:named_route/home.dart';
import 'package:named_route/page1.dart';
import 'package:named_route/page2.dart';
import 'package:named_route/student.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      onGenerateRoute: (settings){
        if(settings.name == Page2.route){
          Student s = settings.arguments;
          return MaterialPageRoute(builder: (context) => Page2(age:s.age,name:s.name));
        }
      },
      routes: {
        Home.route:(context) => Home(),
        Page1.route:(c)=> Page1(),
      },
    );
  }
}