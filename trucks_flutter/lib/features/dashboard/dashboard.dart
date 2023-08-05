import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:trucks_flutter/features/core/components/base_screen.dart';

import '/constants/controllers.dart';
import '/constants/styles.dart';
import '../../utils/responsiveness.dart';
import '../core/components/custom_text.dart';

class DashboardPage extends BaseScreen {
  const DashboardPage({super.key});

  @override
  Widget body(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                    color: dark,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
