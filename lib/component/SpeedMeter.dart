import 'package:flutter/material.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';

import 'CustomContainer.dart';

class SpeedMeter extends StatelessWidget {
  const SpeedMeter({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return CustomConrainer(
        borderRadius: 30,
        child: Row(children: [
          Icon(
            icon,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$value",
                style: kPrimaryTitle2,
              ),
              Text(
                title,
                style: kCaptionTheme,
              )
            ],
          )
        ]));
  }
}
