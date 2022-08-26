import 'package:first_web/helpers/local_navigator.dart';
import 'package:first_web/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
        flex: 1,
        child: SideMenu(),
      ),
      Expanded(
        flex: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: localNavigator(),
        ),
      ),
    ]);
  }
}
