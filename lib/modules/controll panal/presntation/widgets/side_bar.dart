import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:system_management/core/styles/app_colors.dart';

// ignore: must_be_immutable
class SideBar extends StatefulWidget {
  SideBar({super.key, required this.pageController});
  PageController pageController;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  late RebuildCubit rebuildCubit;
  SideMenuController sideMenuController = SideMenuController(initialPage: 0);
  @override
  void initState() {
    sideMenuController.addListener((index) {
      widget.pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    rebuildCubit = RebuildCubit.get(context);
    return SideMenu(
        style: SideMenuStyle(
            displayMode: SideMenuDisplayMode.auto,
            hoverColor: Colors.blue[100],
            selectedColor: Colors.lightBlue,
            selectedTitleTextStyle: const TextStyle(color: Colors.white),
            selectedIconColor: Colors.white,
            backgroundColor: AppColors.grey1),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 100, left: 20, top: 40),
          child: Text("Welcome"),
        ),
        items: [
          SideMenuItem(
            title: 'Controll Panel',
            onTap: (index, sideMenuController) {},
            icon: const Icon(Icons.admin_panel_settings_outlined),
          ),
          SideMenuItem(
            title: 'Categories',
            onTap: (index, sideMenuController) {},
            icon: const Icon(Icons.crop_square),
          ),
          SideMenuItem(
            title: 'History',
            onTap: (index, sideMenuController) {},
            icon: const Icon(
              Icons.history,
            ),
          ),
          SideMenuItem(
              title: 'Reports',
              onTap: (index, sideMenuController) {},
              icon: const Icon(
                Icons.bar_chart_sharp,
              )),
          SideMenuItem(
              title: 'Storage',
              onTap: (index, sideMenuController) {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
              )),
          SideMenuItem(
              title: 'Products',
              onTap: (index, sideMenuController) {},
              icon: const Icon(
                Icons.production_quantity_limits,
              )),
          SideMenuItem(
            title: 'Support',
            onTap: (index, sideMenuController) {},
            icon: const Icon(
              Icons.support,
            ),
          )
        ],
        controller: sideMenuController);
  }
}
