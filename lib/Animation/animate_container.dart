import 'package:flutter/material.dart';

class AnimateCont extends StatefulWidget {
  @override
  State<AnimateCont> createState() => _AnimateContState();
}

class _AnimateContState extends State<AnimateCont> {
  double height = 200;

  double width = 200;
  Color color = Colors.red;
  Color colort = Colors.blue;
  double fontsize = 18;
  updatesize() {
    if (width == 200) {
      width = 400;
      height = 400;
      color = Colors.blue;
      colort = Colors.red;
      fontsize = 30;
    } else {
      width = 200;
      height = 200;
      color = Colors.red;
      colort = Colors.blue;
      fontsize = 16;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    updatesize();
                  });
                },
                child: Text('Animate')),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: width,
              height: height,
              color: color,
              curve: Curves.bounceOut,
              child: Center(
                  child: AnimatedDefaultTextStyle(
                duration: Duration(seconds: 2),
                curve: Curves.bounceOut,
                child: Text('Animation'),
                style: TextStyle(fontSize: fontsize, color: colort),
              )),
            )
          ],
        ),
      ),
    );
  }
}
