import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_states.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/core/styles/app_colors.dart';
import 'package:system_management/core/styles/decorations.dart';
import 'package:system_management/modules/controll%20panal/presntation/widgets/history_table.dart';

// ignore: must_be_immutable
class History extends StatelessWidget {
  History({super.key});
  PageController controller = PageController();
  PageController pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "History",
            style: CustomVariables.textTheme.displayMedium,
          ),
          BlocBuilder<RebuildCubit, RebuildStates>(
            builder: (context, state) {
              return SizedBox(
                height: 800,
                child: PageView.builder(
                  itemCount: 10,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return HistoryTable(
                      index: index,
                    );
                  },
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                    RebuildCubit.get(context).rebuild();
                  },
                  icon: const Icon(Icons.arrow_back)),
              SizedBox(
                height: 44,
                width: (4 * 54) + 5,
                child: BlocBuilder<RebuildCubit, RebuildStates>(
                  builder: (context, state) {
                    return BlocBuilder<RebuildCubit, RebuildStates>(
                      builder: (context, state) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          controller: controller,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                pageController.jumpToPage(index);
                                currentIndex = index;
                                RebuildCubit.get(context).rebuild();
                              },
                              child: Container(
                                height: 34,
                                width: 34,
                                margin: const EdgeInsets.all(10),
                                decoration: circularDecoration(
                                    radius: 4,
                                    color: currentIndex == index
                                        ? AppColors.grey1
                                        : AppColors.grey2),
                                child: Text(
                                  "${index + 1}",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              IconButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                    RebuildCubit.get(context).rebuild();
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          )
        ],
      ),
    );
  }
}
