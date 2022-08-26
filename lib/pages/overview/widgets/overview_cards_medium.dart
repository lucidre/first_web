import 'package:first_web/pages/overview/widgets/info_cards.dart';
import 'package:flutter/material.dart';

class OverViewCardsMediumScreen extends StatelessWidget {
  const OverViewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              isActive: false,
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Packages delivered",
              value: "17",
              isActive: false,
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              isActive: false,
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: width / 64,
            ),
            InfoCard(
              title: "Packages delivered",
              value: "17",
              isActive: false,
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
      ],
    );
  }
}
