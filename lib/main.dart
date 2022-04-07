import 'package:flutter/material.dart';
import 'package:flutter_application_4/Animation/animate_align.dart';
import 'package:flutter_application_4/Animation/animate_container.dart';
import 'package:flutter_application_4/Animation/animate_test.dart';
import 'package:flutter_application_4/Animation/tween_animate.dart';
import 'package:flutter_application_4/bmi_calculator/bmi_result.dart';
import 'package:flutter_application_4/tasks_app/home_screen.dart';
import 'package:flutter_application_4/teleapp/homescreen.dart';

import 'bmi_calculator/bmi-screen.dart';
import 'login_register-messnger/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreeen());
  }
}
