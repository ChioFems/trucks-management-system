// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:trucks_client/trucks_client.dart';

// import 'package:trucks_flutter/features/core/components/base_screen.dart';
// import 'package:trucks_flutter/features/trucks/components/button_widget.dart';
// import 'package:trucks_flutter/features/trucks/components/data_table.dart';
import '../../utils/responsiveness.dart';
import '/constants/controllers.dart';
import '/constants/styles.dart';
import '../core/components/custom_text.dart';
import 'components/data_table_bk.dart';
// import 'providers/truck_model_provider.dart';

class TrucksPage extends ConsumerStatefulWidget {
  const TrucksPage({
    super.key,
  });

  @override
  ConsumerState<TrucksPage> createState() => _TrucksPageState();
}

class _TrucksPageState extends ConsumerState<TrucksPage> {
  // late List<TruckModel> truckModels;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // truckModels = ref.watch(truckModelProvider);

    return Container(
      // color: backgroundColor.withOpacity(.2),
      color: lightGrey.withOpacity(.2),
      // color: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              defaultSpace * 1,
            ),
            // padding: const EdgeInsets.only(
            // top: defaultSpace * 1, left: defaultSpace * 1),
            child: Align(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: menuController.activeItem.value,
                size: 20,
                weight: FontWeight.bold,
                color: dark,
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: width,
              height: height * .8,
              padding: EdgeInsets.all(defaultSpace),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultSpace / 2)),
                  color: Colors.white,
                  // color: Color.fromARGB(255, 233, 238, 241),
                  shape: BoxShape.rectangle),
              margin: const EdgeInsets.only(
                // top: defaultSpace * 2,
                left: defaultSpace,
                right: defaultSpace * 2,
                // bottom: defaultSpace * 3,
              ),
              child: SingleChildScrollView(
                child: Container(
                  width: width,
                  height: height * .60,
                  // color: Colors.blue,
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  // child: TruckModelDataTable(),
                  child: TruckModelDataTable2(),
                ),
              ),
              //mvn to table page
              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: defaultSpace),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           // filter container
              //           Container(
              //             width: 400,
              //             height: 40,
              //             decoration: BoxDecoration(
              //                 color: backgroundColor.withOpacity(.5),
              //                 shape: BoxShape.rectangle,
              //                 border: Border.all(
              //                     color: Colors.grey.withOpacity(.4),
              //                     width: .7),
              //                 borderRadius: BorderRadius.circular(.4)),
              //             child: Row(
              //               children: [
              //                 Padding(
              //                   padding: const EdgeInsets.all(defaultSpace / 2),
              //                   child: Icon(CupertinoIcons.search,
              //                       color: Colors.grey.withOpacity(.8)),
              //                 ),
              //                 // search text field
              //                 Expanded(
              //                   child: Padding(
              //                     padding: const EdgeInsets.symmetric(
              //                         vertical: defaultSpace),
              //                     child: TextField(
              //                       onChanged: (searchTerm) {
              //                         if (searchTerm.length >= 3) {
              //                           Future.delayed(
              //                               const Duration(seconds: 1), () {
              //                             setState(() {
              //                               filteredTruckModelsList = truckModels
              //                                   .where((truckModel) =>
              //                                       searchTerm.toLowerCase() ==
              //                                           truckModel.brandName ||
              //                                       searchTerm.toLowerCase() ==
              //                                           truckModel.modelName)
              //                                   .map((truckModel) => null);
              //                               truckModels =
              //                                   filteredTruckModelsList;
              //                             });
              //                           });
              //                         }
              //                       },
              //                       style: TextStyle(fontSize: 12),
              //                       decoration: const InputDecoration(
              //                           border: InputBorder.none),
              //                     ),
              //                   ),
              //                 ),
              //                 ButtonWidgetWithIcon(
              //                     icon: Icons.keyboard_arrow_down_outlined,
              //                     label: 'Filter',
              //                     onTap: () {
              //                       print('Filter clicked');
              //                     })
              //               ],
              //             ),
              //           ),
              //           SizedBox(
              //             width: defaultSpace / 2,
              //           ),
              //           Row(
              //             children: [
              //               // export data button
              //               ButtonWidgetWithIcon(
              //                   borderColor: primaryColor,
              //                   borderRadius: 4,
              //                   labelAndIconColor: primaryColor,
              //                   icon: Icons.keyboard_arrow_down_outlined,
              //                   label: 'Export',
              //                   onTap: () {
              //                     print('Export clicked');
              //                   }),
              //               SizedBox(
              //                 width: defaultSpace / 2,
              //               ),
              //               // add new button
              //               Container(
              //                 // width: 120,
              //                 height: 45,
              //                 decoration: BoxDecoration(
              //                     shape: BoxShape.rectangle,
              //                     color: primaryColor,
              //                     borderRadius: BorderRadius.circular(4)),
              //                 child: const Center(
              //                   child: Padding(
              //                     padding: EdgeInsets.all(8.0),
              //                     child: Text(
              //                       'New Truck Model',
              //                       style: TextStyle(
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //     // list or table
              //     SingleChildScrollView(
              //       child: Container(
              //         width: width,
              //         height: height * .60,
              //         // color: Colors.blue,
              //         margin: EdgeInsets.only(
              //             top:
              //                 ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
              //         // child: TruckModelDataTable(),
              //         child: TruckModelDataTable2(),
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
