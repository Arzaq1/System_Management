import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/modules/analysis%20section/presntation/widgets/shadowed_container.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/borderd_button.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/report_column.dart';

import '../widgets/products_table.dart';

class StorageManagement extends StatelessWidget {
  const StorageManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Storage Management",
              style: CustomVariables.textTheme.displayLarge,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 162,
                    width: 1063,
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Catigories",
                                  style:
                                      CustomVariables.textTheme.displayMedium,
                                ),
                                Text(
                                  "14",
                                  style:
                                      CustomVariables.textTheme.displayMedium,
                                ),
                                Text(
                                  "Last 7 days",
                                  style: CustomVariables.textTheme.displaySmall,
                                ),
                              ],
                            )),
                        const VerticalDivider(color: Colors.white),
                        ReportColumn(
                            title: "All Products",
                            sales: 129230,
                            productNumber: 239),
                        const VerticalDivider(
                          color: Colors.white,
                        ),
                        ReportColumn(
                            title: "Best sales",
                            sales: 129230,
                            productNumber: 239),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -15,
                    left: -40,
                    child: ShadowedConainer(
                      height: 30,
                      width: 115,
                      borderRadius: 10,
                      color: const Color.fromRGBO(172, 172, 172, 1),
                      child: const Center(child: Text("Total Storage")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 1200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  BorderdButton(
                    title: "Save All",
                    onPressed: () {},
                  ),
                  BorderdButton(
                    title: "Filter",
                    onPressed: () {},
                  ),
                  BorderdButton(
                    title: "Add Product",
                    onPressed: () {},
                    color: const Color.fromRGBO(19, 102, 217, 1),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
            const ProductsTable()
          ],
        ),
      ),
    );
  }
}
