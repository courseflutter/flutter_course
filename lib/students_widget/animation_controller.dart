import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  MyAnimation({Key? key}) : super(key: key);

  @override
  State<MyAnimation> createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;
  double y = 0;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(begin: -100.0, end: 100.0)
        .animate(_controller as Animation<double>)
      ..addListener(() {
        print(_animation!.value);
        setState(() {
          y = _animation!.value;
        });
      })
      ..addStatusListener((status) {
        print(status);
      });
    _controller!.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.translate(
          offset: Offset(0, y),
          child: Image.asset(
            'images/wp.jpg',
            width: 250,
            height: 250,
          ),
        ),
      ),
    );
  }
}
