import 'package:flutter/material.dart';

class AnimateTween extends StatefulWidget {
  AnimateTween({Key? key}) : super(key: key);

  @override
  State<AnimateTween> createState() => _AnimateTweenState();
}

class _AnimateTweenState extends State<AnimateTween> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TweenAnimationBuilder(
        tween: Tween<double>(begin: 20, end: 400),
        duration: Duration(seconds: 3),
        builder: (context, value, child) {
          return Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 3),
              color: color,
              width: value as double,
              height: value as double,
              curve: Curves.easeInQuint,
            ),
          );
        },
        onEnd: () {
          color = Colors.red[600] as Color;
        },
      ),
    );
  }
}
