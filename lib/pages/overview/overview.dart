import 'package:first_web/constants/controllers.dart';
import 'package:first_web/helpers/responsiveness.dart';
import 'package:first_web/pages/overview/widgets/overview_cards_large.dart';
import 'package:first_web/pages/overview/widgets/overview_cards_medium.dart';
import 'package:first_web/pages/overview/widgets/overview_cards_small.dart';
import 'package:first_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
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
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 300,
              ),
              child: (ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context))
                  ? (ResponsiveWidget.isCustomScreen(context))
                      ? const OverViewCardsMediumScreen()
                      : const OverViewCardsLargeScreen()
                  : const OverViewCardsSmallScreen(),
            )
          ],
        ))
      ],
    );
  }
}
