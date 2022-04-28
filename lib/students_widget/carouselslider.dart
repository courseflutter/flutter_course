import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/login_register-messnger/users.dart';

class Carousels extends StatelessWidget {
  const Carousels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
          items: images
              .map((e) => Container(
                  width: double.infinity,
                  child: Image.asset(
                    '$e',
                    fit: BoxFit.cover,
                  )))
              .toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1500),
              autoPlayCurve: Curves.easeInBack),
        ),
      ),
    );
  }
}
