import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  GradientContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.child,
    this.margin,
    this.padding,
  }) : super(key: key);
  double height, width, borderRadius;
  EdgeInsetsGeometry? margin;
  EdgeInsetsGeometry? padding;

  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 195, 195, 195),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(97, 206, 204, 204), spreadRadius: 2)
          ]),
      child: child,
    );
  }
}
