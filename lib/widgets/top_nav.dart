import 'package:first_web/constants/style.dart';
import 'package:first_web/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                //
                Container(
                  padding: const EdgeInsets.only(left: 14),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu_rounded,
                color: dark,
              ),
            ),
    ),
    elevation: 0,
    title: Row(
      children: [
        //
        Visibility(
          child: CustomText(
            text: 'Dash',
            color: lightGrey,
            size: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings_rounded,
            color: dark.withOpacity(.7),
          ),
        ),
        Stack(
          children: [
            //
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_rounded,
                color: dark.withOpacity(.7),
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: light,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 2,
          color: lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(
          text: 'Oti Temitope',
          color: lightGrey,
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            color: Colors.white,
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: dark),
  );
}
