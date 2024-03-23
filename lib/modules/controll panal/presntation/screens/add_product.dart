import 'package:flutter/material.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/core/styles/app_colors.dart';
import 'package:system_management/core/styles/decorations.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/controll_panal.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/add_right_side.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/data_fields_card.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/titled_textfield.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            height: 50,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: circularDecoration(radius: 10, color: AppColors.grey2),
            child: Center(
              child: ListTile(
                title: Text(
                  "Catigories",
                  style: CustomVariables.textTheme.displayMedium,
                ),
                leading: const Icon(Icons.arrow_back),
                onTap: () {
                  ControlPanal.pageController.jumpToPage(1);

                },
              ),
            ),
          ),
          SizedBox(
            height: 660,
            child: Row(
              children: [
                DataFieldsCard(height: 657, children: [
                  Text(
                    "Add Product",
                    style: CustomVariables.textTheme.displayMedium,
                  ),
                  TitledTextField(title: "name", height: 40, width: 530),
                  TitledTextField(title: "Catigory", height: 40, width: 530),
                  TitledTextField(title: "quantity", height: 40, width: 530),
                  TitledTextField(title: "price", height: 40, width: 530),
                  TitledTextField(title: "company", height: 40, width: 530),
                  TitledTextField(
                      title: "discreption", height: 100, width: 530),
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: AddScreenRightSide(
                    height: 657,
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
