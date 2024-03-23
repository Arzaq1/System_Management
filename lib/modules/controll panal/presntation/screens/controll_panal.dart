import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_states.dart';
import 'package:system_management/core/screen%20size/screen_size.dart';
import 'package:system_management/core/styles/app_colors.dart';
import 'package:system_management/modules/analysis%20section/presntation/screens/analysis_screen.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/add_catigory.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/add_product.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/catigory_managememnt.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/history.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/reports.dart';
import 'package:system_management/modules/controll%20panal/presntation/screens/storage_management.dart';

import '../widgets/side_bar.dart';

// ignore: must_be_immutable
class ControlPanal extends StatelessWidget {
  ControlPanal({Key? key}) : super(key: key);
  static PageController pageController = PageController();

  List screens = [
    const AnalysisScreen(),
    const CatigoryManagement(),
    History(),
    const StorageManagement(),
    const Reports(),
    const AddCatigory(),
    const AddProduct(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideBar(pageController: pageController),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: ScreenSize.width - 300,
                  color: AppColors.grey2,
                  child: Row(
                    children: [
                      Container(
                        width: 900,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        margin: const EdgeInsets.only(left: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: "search"),
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: BlocBuilder<RebuildCubit, RebuildStates>(
                    builder: (context, state) {
                  return PageView.builder(
                    itemCount: screens.length,
                    controller: pageController,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleChildScrollView(child: screens[index]);
                    },
                  );
                })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
