import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BorderdButton extends StatelessWidget {
  BorderdButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.textColor,
      this.height,
      this.width});
  String title;
  void Function() onPressed;
  Color? color, textColor;
  double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: ElevatedButton(
          onPressed: () => onPressed(),
          style: ButtonStyle(
              shape: const MaterialStatePropertyAll(LinearBorder.none),
              backgroundColor: MaterialStatePropertyAll(color ?? Colors.white)),
          child: Text(
            title,
            style: TextStyle(color: textColor ?? Colors.grey),
          )),
    );
  }
}
