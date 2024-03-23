import 'package:flutter/material.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/core/styles/app_colors.dart';
import 'package:system_management/core/styles/decorations.dart';

// ignore: must_be_immutable
class AddTitledContainer extends StatelessWidget {
  AddTitledContainer({super.key, required this.title, required this.onTap,this.margin});
  String title;
  EdgeInsetsGeometry?margin;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 220,
      padding: const EdgeInsets.symmetric(horizontal: 3),
      margin: margin,
      decoration: circularDecoration(radius: 20, color: AppColors.grey3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: CustomVariables.textTheme.displayMedium,
          ),
          IconButton(onPressed: () {
            onTap();
          }, icon: const Icon(Icons.add_box_outlined))
        ],
      ),
    );
  }
}
