import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class MyWave extends StatelessWidget {
  const MyWave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WaveWidget(
          config: CustomConfig(
              blur: MaskFilter.blur(BlurStyle.solid, 10),
              colors: [Colors.cyanAccent, Colors.blue],
              durations: [6000, 8000],
              heightPercentages: [0.2, 0.5]),
          size: Size(double.infinity, 250),
        ),
      ),
    );
  }
}
