import 'package:flutter/material.dart';

BoxDecoration circularDecoration({required double radius, Color? color}) {
  return BoxDecoration(
      color: color, borderRadius: BorderRadius.circular(radius));
}
