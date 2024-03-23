import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HistoryTable extends StatelessWidget {
  HistoryTable({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: DataTable(columns: const [
        DataColumn(label: Text("code")),
        DataColumn(label: Text("products")),
        DataColumn(label: Text("time")),
        DataColumn(label: Text("date")),
        DataColumn(label: Text("price")),
      ], rows: [
        for (int i = 0; i < 15; i++)
          DataRow(cells: [
             DataCell(Text("012$index")),
            DataCell(SingleChildScrollView(
              child: Container(
                  constraints: const BoxConstraints(maxWidth: 300),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                      "Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola,Sinacola")),
            )),
            const DataCell(Text("6:30 pm")),
            const DataCell(Text("10/12/2023")),
            const DataCell(Text(
              "15 \$",
            )),
          ])
      ]),
    );
  }
}
