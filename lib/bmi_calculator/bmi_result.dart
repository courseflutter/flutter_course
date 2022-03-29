import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  bool isMale;
  int age;
  double result;

  BMIResult({required this.isMale, required this.age, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Age: ${age}',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
