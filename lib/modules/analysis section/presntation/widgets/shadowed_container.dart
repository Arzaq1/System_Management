import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShadowedConainer extends StatelessWidget {
  ShadowedConainer(
      {Key? key,
      this.height,
      this.width,
      required this.borderRadius,
      this.child,
      this.margin,
      this.color})
      : super(key: key);
  double? height, width;
  double borderRadius;
  EdgeInsetsGeometry? margin;
  Color? color;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin ?? const EdgeInsets.only(left: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color ?? Colors.white,
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(97, 206, 204, 204), spreadRadius: 3)
          ]),
      child: child,
    );
  }
}
