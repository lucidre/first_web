import 'package:first_web/pages/overview/widgets/info_cards.dart';
import 'package:first_web/pages/overview/widgets/info_cards_small.dart';
import 'package:flutter/material.dart';

class OverViewCardsSmallScreen extends StatelessWidget {
  const OverViewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            isActive: false,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            isActive: false,
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "7",
            isActive: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
