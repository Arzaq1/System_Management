import 'package:flutter/material.dart';

import '../../../analysis section/presntation/widgets/gradiant_container.dart';

// ignore: must_be_immutable
class CatigoryStack extends StatelessWidget {
  CatigoryStack({super.key, required this.onDelete, required this.onEdit});
  Function() onDelete;
  Function() onEdit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GradientContainer(
          height: 200,
          width: 325,
          borderRadius: 30,
        ),
        Positioned(
            bottom: -20,
            child: GradientContainer(
              height: 60,
              width: 325,
              borderRadius: 30,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                ],
              ),
            )),
      ],
    );
  }
}
