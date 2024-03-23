import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/decorations.dart';

// ignore: must_be_immutable
class DataFieldsCard extends StatelessWidget {
  DataFieldsCard({super.key, required this.height, required this.children});
  double height;
  List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 630,
      padding: const EdgeInsets.only(left: 10, top: 20),
      decoration: circularDecoration(radius: 10, color: AppColors.grey3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
