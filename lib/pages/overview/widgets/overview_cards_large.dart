import 'package:first_web/pages/overview/widgets/info_cards.dart';
import 'package:flutter/material.dart';

class OverViewCardsLargeScreen extends StatelessWidget {
  const OverViewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Row(
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
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Cancelled delivery",
          value: "3",
          isActive: false,
          onTap: () {},
          topColor: Colors.redAccent,
        ),
        SizedBox(
          width: width / 64,
        ),
        InfoCard(
          title: "Scheduled deliveries",
          value: "7",
          isActive: false,
          onTap: () {},
          topColor: Colors.orange,
        ),
      ],
    );
  }
}
