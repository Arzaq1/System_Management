import 'package:flutter/material.dart';

class ProductsTable extends StatelessWidget {
  const ProductsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: DataTable(columns: const [
        DataColumn(label: Text("Products")),
        DataColumn(label: Text("End Date")),
        DataColumn(label: Text("Quantity")),
        DataColumn(label: Text("Price")),
        DataColumn(label: Text("State")),
      ], rows: [
        for (int i = 0; i < 10; i++)
          const DataRow(cells: [
            DataCell(Text("Tiger")),
            DataCell(Text("20/12/2025")),
            DataCell(Text("150")),
            DataCell(Text("5")),
            DataCell(Text(
              "Provided",
              style: TextStyle(color: Colors.green),
            )),
            
          ])
      ]),
    );
  }
}
