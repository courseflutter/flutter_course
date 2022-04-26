import 'package:flutter/material.dart';
import 'package:flutter_application_4/students_widget/animation_controller.dart';
import 'package:flutter_application_4/students_widget/dis.dart';
import 'package:flutter_application_4/students_widget/wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DismissibleApp(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.blueGrey,
          appBarTheme: AppBarTheme(backgroundColor: Colors.grey[400])),
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
    );
  }
}
