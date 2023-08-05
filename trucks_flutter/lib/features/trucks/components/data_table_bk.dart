import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_client/trucks_client.dart';
import 'package:flutter/material.dart';
import 'package:trucks_flutter/constants/styles.dart';
import '../providers/truck_model_provider.dart';

class TruckModelDataTable2 extends ConsumerStatefulWidget {
  const TruckModelDataTable2({super.key});

  @override
  ConsumerState<TruckModelDataTable2> createState() =>
      _TruckModelDataTable2State();
}

class _TruckModelDataTable2State extends ConsumerState<TruckModelDataTable2> {
  late List<TruckModel> truckModels;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    // list of truck models
    // truckModels = ref.watch(truckModelProvider);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // list of truck models
    // truckModels = ref.watch(truckModelProvider);
  }

  TextStyle titles = TextStyle(
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    truckModels = ref.watch(truckModelProvider);
    return Scaffold(body: SingleChildScrollView(child: buildDataTable()));
  }

  Widget buildDataTable() {
    // final columns = ['ID', 'Brand Name', 'Model Name'];
    // final columns = ['', 'ID', 'Brand Name', 'Model Name', '', ''];
    final columns = [
      Checkbox(
        value: false,
        onChanged: (value) {},
      ),
      Text('ID', style: titles),
      Text('Brand Name', style: titles),
      Text('Model Name', style: titles),
      Text(''),
      Text(''),
      Text('')
    ];

    return DataTable(
      border: TableBorder(
        top: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
        bottom: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
        // left: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
        // right: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
        horizontalInside:
            BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
      ),
      columnSpacing: 38.0,
      dataRowHeight: 38.0,
      showCheckboxColumn: true,
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      // rows: getRows(truckModels),
      rows: List.generate(
        truckModels.length,
        (index) {
          final truckModel = truckModels[index];
          return DataRow(
            cells: [
              DataCell(Checkbox(value: false, onChanged: (value) {})),
              DataCell(Text(truckModel.id.toString())),
              DataCell(Text(truckModel.brandName)),
              DataCell(Text(truckModel.modelName)),
              DataCell(Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.blue[200],
              )),
              DataCell(Icon(
                Icons.mode_edit_outlined,
                color: Colors.green[300],
              )),
              DataCell(Icon(
                Icons.delete_outline,
                color: Colors.red[400],
              ))
            ],
          );
        },
      ),
    );
  }

  List<DataColumn> getColumns(List<Widget> columns) => columns
      .map((Widget column) => DataColumn(
            label: Padding(
              padding: const EdgeInsets.all(defaultSpace / 2),
              child: column,
            ),
            onSort: onSort,
          ))
      .toList();

// list of string columns only
  //   List<DataColumn> getColumns(List<String> columns) => columns
  // .map((String column) => DataColumn(
  //       label: Padding(
  //         padding: const EdgeInsets.all(defaultSpace / 2),
  //         child: Text(
  //           column,
  //           style: TextStyle(
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //       ),
  //       onSort: onSort,
  //     ))
  // .toList();

  //list of truck model rows only
  List<DataRow> getRows(List<TruckModel> truckModels) =>
      truckModels.map((TruckModel truckModel) {
        final cells = [
          truckModel.id,
          truckModel.brandName,
          truckModel.modelName,
        ];
        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(SizedBox(
            height: 70,
            child: Text(
              '$data',
              style: TextStyle(fontStyle: FontStyle.normal),
            ),
          )))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
      truckModels.sort((truckModel1, truckModel2) =>
          compareString(ascending, '${truckModel1.id}', '${truckModel2.id}'));
    } else if (columnIndex == 2) {
      truckModels.sort((truckModel1, truckModel2) => compareString(
          ascending, truckModel1.brandName, truckModel2.brandName));
    } else if (columnIndex == 3) {
      truckModels.sort((truckModel1, truckModel2) => compareString(
          ascending, truckModel1.modelName, truckModel2.modelName));
    }

    setState(() {
      sortColumnIndex = columnIndex;
      isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
