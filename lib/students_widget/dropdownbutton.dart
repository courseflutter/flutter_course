import 'package:flutter/material.dart';

class DrobButton extends StatefulWidget {
  DrobButton({Key? key}) : super(key: key);

  @override
  State<DrobButton> createState() => _DrobButtonState();
}

var Selectedlanguage;

class _DrobButtonState extends State<DrobButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          hint: Text('اختر اللغة'),
          items: ['EN', 'AR', 'AUS', 'NL']
              .map((e) => DropdownMenuItem(
                    child: Text('$e'),
                    value: e,
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              Selectedlanguage = value;
            });
          },
          value: Selectedlanguage,
        ),
      ),
    );
  }
}
