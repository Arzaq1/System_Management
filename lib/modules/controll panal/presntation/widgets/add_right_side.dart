import 'package:flutter/material.dart';

import '../../../../core/custom_var/custom_var.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/decorations.dart';
import 'borderd_button.dart';

// ignore: must_be_immutable
class AddScreenRightSide extends StatelessWidget {
  AddScreenRightSide({super.key, required this.height});
  double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 415,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 411,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: circularDecoration(radius: 10, color: AppColors.grey3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Catigory Photo",
                  style: CustomVariables.textTheme.displayMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 82,
                        height: 75,
                        decoration: circularDecoration(
                            radius: 5, color: AppColors.grey2),
                        child: const Center(
                          child: Icon(Icons.photo),
                        ),
                      ),
                      Container(
                        width: 82,
                        height: 75,
                        decoration: circularDecoration(
                            radius: 5, color: AppColors.grey2),
                        child: const Center(
                          child: Icon(Icons.photo),
                        ),
                      ),
                      Container(
                        width: 82,
                        height: 75,
                        decoration: circularDecoration(
                            radius: 5, color: AppColors.grey2),
                        child: const Center(
                          child: Icon(Icons.photo),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 411,
            height: 51,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderdButton(
                  title: "Add",
                  onPressed: () {},
                  height: 51,
                  width: 190,
                  color: AppColors.grey2,
                  textColor: Colors.black,
                ),
                BorderdButton(
                  title: "Save",
                  onPressed: () {},
                  height: 51,
                  width: 190,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
