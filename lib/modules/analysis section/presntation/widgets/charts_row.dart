import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:system_management/modules/analysis%20section/presntation/widgets/shadowed_container.dart';

class SalesData {
  final String day;
  final double amount;

  SalesData(this.day, this.amount);
}

// ignore: must_be_immutable
class ChartsRow extends StatelessWidget {
  ChartsRow({super.key});

  List<SalesData> data = [
    SalesData('Sunday', 44033),
    SalesData('Saturday', 3244),
    SalesData('Monday', 35300),
    SalesData('Tuesday', 28397),
    SalesData('Wednesday', 33456),
    SalesData('Thursday', 32365),
    SalesData('Friday', 40535),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ShadowedConainer(
            height: 520,
            width: 700,
            borderRadius: 40,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("sales",
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 148, 148, 1))),
                              Text("10000,00 dolar",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text("+3.4 % from the last week",
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 148, 148, 1)))
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Week",
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 148, 148, 1)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Month",
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 148, 148, 1)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Year",
                                  style: TextStyle(
                                      color: Color.fromRGBO(148, 148, 148, 1)),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <CartesianSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          dataSource: data,
                          xValueMapper: (SalesData sales, _) => sales.day,
                          yValueMapper: (SalesData sales, _) => sales.amount,
                          name: 'Sales',
                          dataLabelSettings:
                              const DataLabelSettings(isVisible: true))
                    ]),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ShadowedConainer(
                height: 300,
                width: 500,
                borderRadius: 30,
                child: SfCircularChart(series: <CircularSeries>[
                  PieSeries<SalesData, String>(
                    dataSource: data,
                    xValueMapper: (SalesData data, _) => data.day,
                    yValueMapper: (SalesData data, _) => data.amount,
                    dataLabelMapper: (SalesData data, _) =>
                        "${data.day} ${((data.amount / 200000) * 100).round()}%",
                    explode: true,
                    explodeAll: true,
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      labelPosition: ChartDataLabelPosition.outside,
                      labelIntersectAction: LabelIntersectAction.shift,
                      labelAlignment: ChartDataLabelAlignment.top,
                    ),
                  )
                ]),
              ),
              ShadowedConainer(
                height: 220,
                width: 500,
                borderRadius: 30,
                margin: const EdgeInsets.only(top: 8),
              ),
            ],
          )
        ],
      ),
    );
  }
}
