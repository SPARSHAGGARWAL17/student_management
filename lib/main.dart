import 'package:flutter/material.dart';
import 'package:student_management/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Management',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.blue[50],
      ),
      color: Colors.blue,
      routes: {
        WelcomePage.Route: (context) => WelcomePage(),
        LoginPage.Route: (context) => LoginPage(),
        StudentMainPage.Route: (context) => StudentMainPage(),
      },
      initialRoute: StudentMainPage.Route,
    );
  }
}
