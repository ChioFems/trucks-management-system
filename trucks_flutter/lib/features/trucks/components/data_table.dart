import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_client/trucks_client.dart';
import '/features/core/components/base_component.dart';
import 'package:flutter/material.dart';
import '../providers/truck_model_provider.dart';

class TruckModelDataTable extends BaseComponent {
  int? sortColumnIndex;
  bool isAscending = false;

  TruckModelDataTable({
    super.key,
    // this.sortColumnIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // list of truck models
    final truckModels = ref.watch(truckModelProvider);
    final columns = ['ID', 'Brand Name', 'Model Name'];
    int? sortColumnIndex;

    TextStyle titles = const TextStyle(
      fontWeight: FontWeight.bold,
    );

    return DataTable(
      // columnSpacing: 38.0,
      // dataRowHeight: 38.0,
      // showCheckboxColumn: true,
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      // columns: [
      //   DataColumn(
      //     label: Text(
      //       'ID',
      //       style: titles,
      //     ),
      //     numeric: true,
      //   ),
      //   DataColumn(
      //       label: Text(
      //     'Brand Name',
      //     style: titles,
      //   )),
      //   DataColumn(
      //       label: Text(
      //     'Model Name',
      //     style: titles,
      //   )),
      // ],
      rows: getRows(truckModels),
      // rows: List.generate(
      //   truckModels.length,
      //   (index) {
      //     final truckModel = truckModels[index];
      //     final z = truckModel.id;
      //     final y = truckModel.modelName;
      //     final x = truckModel.modelName;
      //     return DataRow(cells: [
      //       DataCell(Container(child: Text(z.toString()))),
      //       DataCell(Container(width: 75, child: Text(y))),
      //       DataCell(Container(child: Text(x))),
      //     ]);
      //   },
      // ),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(
              column,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<TruckModel> truckModels) =>
      truckModels.map((TruckModel truckModel) {
        final cells = [
          truckModel.id,
          truckModel.modelName,
          truckModel.modelName
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

// doesn't work coz i cant change state, extending BaseComponent instead of Stateful Widget
  void onSort(int columnIndex, bool ascending) {
    sortColumnIndex = columnIndex;
    isAscending = ascending;
  }
}
