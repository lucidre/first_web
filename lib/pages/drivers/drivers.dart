import 'package:first_web/constants/controllers.dart';
import 'package:first_web/helpers/responsiveness.dart';
import 'package:first_web/pages/drivers/widgets/drivers_table.dart';
import 'package:first_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                  ),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        const Expanded(
          child: DriversTable(),
        )
      ],
    );
  }
}
