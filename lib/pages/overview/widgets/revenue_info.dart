import 'package:first_web/constants/style.dart';
import 'package:flutter/material.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfo({Key? key, required this.title, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title \n\n",
              style: TextStyle(
                color: lightGrey,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: "\$ $amount",
              style: TextStyle(
                  color: dark, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
