import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/custom_var/custom_var.dart';

// ignore: must_be_immutable
class TitledTextField extends StatelessWidget {
  TitledTextField(
      {super.key,
      required this.title,
      required this.height,
      required this.width});
  String title;
  double height, width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              title,
              style: CustomVariables.textTheme.displaySmall,
            ),
          ),
          SizedBox(
            width: width,
            height: height,
            child: TextField(
              expands: true,
              maxLines: null,
              minLines: null,
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter Your Text",
                  contentPadding: const EdgeInsets.only(top: 10, left: 5)),
            ),
          ),
        ],
      ),
    );
  }
}
