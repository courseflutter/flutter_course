import 'dart:async';

import 'package:flutter/material.dart';

class blabla extends StatefulWidget {
  blabla({Key? key}) : super(key: key);

  @override
  State<blabla> createState() => _blablaState();
}

class _blablaState extends State<blabla> {
  @override
  double width = 200;
  double height = 200;
  double r = 0;
  Color color = Colors.purple.shade300;
  updatesize() {
    if (width == 200) {
      width = 400;
      height = 400;
      r = 200;
      color = Colors.pink.shade300;
    } else {
      width = 200;
      height = 200;
      r = 0;
      color = Colors.purple.shade400;
    }
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        updatesize();
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(r),
                  color: color,
                ),
                width: width,
                height: height,
                duration: Duration(seconds: 2),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      updatesize();
                    });
                  },
                  child: Text(
                    "Fadoudi & Majoudi",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
