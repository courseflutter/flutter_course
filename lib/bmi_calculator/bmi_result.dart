import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  bool? isMale;
  int? age;
  double? result;

  BMIResult({required isMale, required age, required result});

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
              'Gender : Male',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Result : 33',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Age: 25',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
