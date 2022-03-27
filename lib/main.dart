import 'package:flutter/material.dart';
import 'package:flutter_application_4/bmi_calculator/bmi_result.dart';

import 'bmi_calculator/bmi-screen.dart';
import 'login_register-messnger/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BMIScreen());
  }
}
