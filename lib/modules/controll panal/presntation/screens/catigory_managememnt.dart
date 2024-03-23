import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/core/screen%20size/screen_size.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/controll_panal.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/add_titled_container.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/catigory_stack.dart';

class CatigoryManagement extends StatelessWidget {
  const CatigoryManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Catigories",
            style: CustomVariables.textTheme.displayLarge,
          ),
          SizedBox(
            height: 65,
            child: Row(
              children: [
                AddTitledContainer(
                  title: "Catigory",
                  onTap: () {
                    ControlPanal.pageController.jumpToPage(5);
                  },
                ),
                AddTitledContainer(
                  title: "Product",
                  onTap: () {
                    ControlPanal.pageController.jumpToPage(6);
                  },
                  margin: const EdgeInsets.only(left: 30),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 670,
            width: ScreenSize.width * 7,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.8,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CatigoryStack(
                    onDelete: () {},
                    onEdit: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
