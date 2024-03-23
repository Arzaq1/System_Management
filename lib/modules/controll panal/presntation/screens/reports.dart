import 'package:flutter/material.dart';
import 'package:system_management/core/custom_var/custom_var.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reports",
            style: CustomVariables.textTheme.displayLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 524,
                  height: 242,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Sales Report",
                    style: CustomVariables.textTheme.displayMedium,
                  ),
                ),
                Container(
                  width: 524,
                  height: 242,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 217, 217, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Storage Report",
                    style: CustomVariables.textTheme.displayMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
