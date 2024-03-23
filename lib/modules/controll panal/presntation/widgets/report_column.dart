
import 'package:flutter/material.dart';
import 'package:system_management/core/custom_var/custom_var.dart';

// ignore: must_be_immutable
class ReportColumn extends StatelessWidget {
  ReportColumn(
      {super.key,
      required this.title,
      required this.sales,
      required this.productNumber});
  String title;
  double productNumber, sales;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title, style: CustomVariables.textTheme.displayMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$productNumber",
                  style: CustomVariables.textTheme.displayMedium,
                ),
                Text(
                  "$sales",
                  style: CustomVariables.textTheme.displayMedium,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last 7 days",
                    style: CustomVariables.textTheme.displaySmall,
                  ),
                  Text(
                    "Sales",
                    style: CustomVariables.textTheme.displaySmall,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
