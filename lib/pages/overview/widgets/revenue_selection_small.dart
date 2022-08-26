import 'package:first_web/constants/style.dart';
import 'package:first_web/pages/overview/widgets/barchart.dart';
import 'package:first_web/pages/overview/widgets/revenue_info.dart';
import 'package:first_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSelectionSmall extends StatelessWidget {
  const RevenueSelectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,
          )
        ],
        border: Border.all(
          color: lightGrey,
          width: .5,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue Chart ',
                  size: 20,
                  fontWeight: FontWeight.bold,
                  color: lightGrey,
                ),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          SizedBox(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    RevenueInfo(title: "Today's revenue", amount: "23"),
                    RevenueInfo(title: "Last 7 days", amount: "150"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    RevenueInfo(title: "Last 30 days", amount: "1,203"),
                    RevenueInfo(title: "Last 12 months", amount: "3,234"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
