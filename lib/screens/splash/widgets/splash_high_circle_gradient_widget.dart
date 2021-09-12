import 'package:flutter/material.dart';

class CircleGradient extends StatelessWidget {
  final double width;
  final double height;
  final Color gradientColor;
  const CircleGradient({
    Key? key,
    required this.width,
    required this.height,
    required this.gradientColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            gradientColor.withOpacity(.05),
            gradientColor.withOpacity(0),
          ],
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 15.0,
            blurRadius: 50.0,
            color: gradientColor.withOpacity(.09),
          ),
        ],
      ),
    );
  }
}
