import 'package:flutter/material.dart';
import 'package:system_management/modules/analysis%20section/presntation/widgets/charts_row.dart';

import 'package:system_management/modules/analysis%20section/presntation/widgets/statistic.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatisticContainer(),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: ChartsRow(),
        ),
      ],
    );
  }
}
