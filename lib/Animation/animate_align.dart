import 'package:flutter/material.dart';

class AnimateAlign extends StatefulWidget {
  AnimateAlign({Key? key}) : super(key: key);

  @override
  State<AnimateAlign> createState() => _AnimateAlignState();
}

class _AnimateAlignState extends State<AnimateAlign> {
  bool tap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
        onTap: () {
          setState(() {
            tap ? tap = false : tap = true;
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: AnimatedAlign(
            alignment: tap ? Alignment.topLeft : Alignment.bottomRight,
            duration: Duration(seconds: 5),
            child: FlutterLogo(
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
