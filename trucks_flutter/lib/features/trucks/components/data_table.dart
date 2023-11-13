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


// datatable 2 implementation
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:trucks_client/trucks_client.dart';
// import 'package:flutter/material.dart';
// import 'package:trucks_flutter/constants/styles.dart';
// import 'package:trucks_flutter/features/trucks/components/button_widget.dart';
// import '../providers/truck_model_provider.dart';

// class TruckModelDataTable2 extends ConsumerStatefulWidget {
//   const TruckModelDataTable2({super.key});

//   @override
//   ConsumerState<TruckModelDataTable2> createState() =>
//       _TruckModelDataTable2State();
// }

// class _TruckModelDataTable2State extends ConsumerState<TruckModelDataTable2> {
//   late List<TruckModel> truckModels;
//   TextEditingController searchController = TextEditingController();
//   int? sortColumnIndex;
//   bool isAscending = false;
//   var atruckModel;

//   @override
//   void initState() {
//     // filteredTruckModelsList = truckModels;
//     super.initState();

//     // list of truck models
//     // truckModels = ref.watch(truckModelProvider);
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     // list of truck models
//     // truckModels = ref.watch(truckModelProvider);
//   }

//   TextStyle titles = TextStyle(
//     fontWeight: FontWeight.bold,
//   );

//   @override
//   Widget build(BuildContext context) {
//     truckModels = ref.watch(truckModelProvider);
//     // filteredTruckModelsList = ref.watch(truckModelProvider);
//     return Scaffold(body: SingleChildScrollView(child: buildDataTable()));
//   }

//   Widget buildDataTable() {
//     // final columns = ['ID', 'Brand Name', 'Model Name'];
//     // final columns = ['', 'ID', 'Brand Name', 'Model Name', '', ''];
//     final columns = [
//       Checkbox(
//         value: false,
//         onChanged: (value) {},
//       ),
//       Text('ID', style: titles),
//       Text('Brand Name', style: titles),
//       Text('Model Name', style: titles),
//       Text(''),
//       // Text(''),
//       Text('')
//     ];

//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(bottom: defaultSpace),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // filter container
//               Container(
//                 width: 400,
//                 height: 40,
//                 decoration: BoxDecoration(
//                     color: backgroundColor.withOpacity(.5),
//                     shape: BoxShape.rectangle,
//                     border: Border.all(
//                         color: Colors.grey.withOpacity(.4), width: .7),
//                     borderRadius: BorderRadius.circular(.4)),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(defaultSpace / 2),
//                       child: Icon(CupertinoIcons.search,
//                           color: Colors.grey.withOpacity(.8)),
//                     ),
//                     // search text field
//                     Expanded(
//                       child: Padding(
//                         padding:
//                             const EdgeInsets.symmetric(vertical: defaultSpace),
//                         child: TextField(
//                           controller: searchController,
//                           style: TextStyle(fontSize: 12),
//                           decoration: const InputDecoration(
//                             border: InputBorder.none,
//                             // hintText: 'Search...',
//                           ),
//                           onChanged: (searchTerm) {
//                             // setState(() {
//                             //   truckModels = filteredTruckModelsList!
//                             //       .where((element) =>
//                             //           element.brandName.contains(searchTerm))
//                             //       .toList();
//                             // });
//                             //end of imp1
//                             // if (searchTerm.length >= 3) {
//                             //   Future.delayed(const Duration(seconds: 1), () {
//                             //     filteredTruckModelsList = truckModels
//                             //         .where((truckModel) =>
//                             //             searchTerm.toLowerCase() ==
//                             //                 truckModel.brandName ||
//                             //             searchTerm.toLowerCase() ==
//                             //                 truckModel.modelName)
//                             //         .map((truckModel) => null);
//                             //     setState(() {
//                             //       truckModels = filteredTruckModelsList;
//                             //     });
//                             //   });
//                             // } else {
//                             //   truckModels.map((truckModel) => null);
//                             // }
//                             //end of imp1
//                           },
//                         ),
//                       ),
//                     ),
//                     ButtonWidgetWithIcon(
//                         icon: Icons.keyboard_arrow_down_outlined,
//                         label: 'Filter',
//                         onTap: () {
//                           print('Filter clicked');
//                         })
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: defaultSpace / 2,
//               ),
//               Row(
//                 children: [
//                   // export data button
//                   ButtonWidgetWithIcon(
//                       borderColor: primaryColor,
//                       borderRadius: 4,
//                       labelAndIconColor: primaryColor,
//                       icon: Icons.keyboard_arrow_down_outlined,
//                       label: 'Export',
//                       onTap: () {
//                         print('Export clicked');
//                       }),
//                   SizedBox(
//                     width: defaultSpace / 2,
//                   ),
//                   // add new button
//                   Container(
//                     // width: 120,
//                     height: 45,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         color: primaryColor,
//                         borderRadius: BorderRadius.circular(4)),
//                     child: const Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text(
//                           'New Truck Model',
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         // list or table
//         //l8tr
//         DataTable(
//           border: TableBorder(
//             top: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
//             bottom: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
//             // left: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
//             // right: BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
//             horizontalInside:
//                 BorderSide(color: Colors.grey.withOpacity(.1), width: 1),
//           ),
//           columnSpacing: 38.0,
//           dataRowHeight: 38.0,
//           showCheckboxColumn: true,
//           sortAscending: isAscending,
//           sortColumnIndex: sortColumnIndex,
//           columns: getColumns(columns),
//           // rows: getRows(truckModels),
//           rows: getRowss(),
//         ),
//         //end of list
//       ],
//     );
//   }

//   List<DataColumn> getColumns(List<Widget> columns) => columns
//       .map((Widget column) => DataColumn(
//             label: Padding(
//               padding: const EdgeInsets.all(defaultSpace / 2),
//               child: column,
//             ),
//             onSort: onSort,
//           ))
//       .toList();

// // list of string columns only
//   //   List<DataColumn> getColumns(List<String> columns) => columns
//   // .map((String column) => DataColumn(
//   //       label: Padding(
//   //         padding: const EdgeInsets.all(defaultSpace / 2),
//   //         child: Text(
//   //           column,
//   //           style: TextStyle(
//   //             fontWeight: FontWeight.bold,
//   //           ),
//   //         ),
//   //       ),
//   //       onSort: onSort,
//   //     ))
//   // .toList();

//   List<DataRow> getRowss() {
//     return List.generate(
//       truckModels.length,
//       (index) {
//         final truckModel = truckModels[index];
//         return DataRow(
//           cells: [
//             DataCell(Checkbox(value: false, onChanged: (value) {})),
//             DataCell(Text(truckModel.id.toString())),
//             DataCell(Text(truckModel.brandName)),
//             DataCell(Text(truckModel.modelName)),
//             // DataCell(Icon(
//             //   Icons.remove_red_eye_outlined,
//             //   color: Colors.blue[200],
//             // )),
//             DataCell(Icon(
//               Icons.mode_edit_outlined,
//               color: Colors.green[300],
//             )),
//             DataCell(Icon(
//               Icons.delete_outline,
//               color: Colors.red[400],
//             ))
//           ],
//         );
//       },
//     );
//   }

//   //list of truck model rows only
//   List<DataRow> getRows(List<TruckModel> truckModels) =>
//       truckModels.map((TruckModel truckModel) {
//         final cells = [
//           truckModel.id,
//           truckModel.brandName,
//           truckModel.modelName,
//         ];
//         return DataRow(cells: getCells(cells));
//       }).toList();

//   List<DataCell> getCells(List<dynamic> cells) => cells
//       .map((data) => DataCell(SizedBox(
//             height: 70,
//             child: Text(
//               '$data',
//               style: TextStyle(fontStyle: FontStyle.normal),
//             ),
//           )))
//       .toList();

//   void onSort(int columnIndex, bool ascending) {
//     if (columnIndex == 1) {
//       truckModels.sort((truckModel1, truckModel2) =>
//           compareString(ascending, '${truckModel1.id}', '${truckModel2.id}'));
//     } else if (columnIndex == 2) {
//       truckModels.sort((truckModel1, truckModel2) => compareString(
//           ascending, truckModel1.brandName, truckModel2.brandName));
//     } else if (columnIndex == 3) {
//       truckModels.sort((truckModel1, truckModel2) => compareString(
//           ascending, truckModel1.modelName, truckModel2.modelName));
//     }

//     setState(() {
//       sortColumnIndex = columnIndex;
//       isAscending = ascending;
//     });
//   }

//   int compareString(bool ascending, String value1, String value2) =>
//       ascending ? value1.compareTo(value2) : value2.compareTo(value1);
// }
