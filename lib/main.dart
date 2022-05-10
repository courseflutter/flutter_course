import 'package:flutter/material.dart';
import 'package:flutter_application_4/students_widget/animation_controller.dart';
import 'package:flutter_application_4/students_widget/carouselslider.dart';
import 'package:flutter_application_4/students_widget/dis.dart';
import 'package:flutter_application_4/students_widget/dropdownbutton.dart';
import 'package:flutter_application_4/students_widget/popupmenu.dart';
import 'package:flutter_application_4/students_widget/wave.dart';
import 'package:flutter_application_4/tasks_app/home_screen.dart';

import 'counter_app/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
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
