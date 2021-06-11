import 'package:flutter/material.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';
import 'package:vpnapp/constants/colorConstant.dart';

class SettingsCard extends StatelessWidget {
  final String title;
  final String body;
  final String text;
  final Function onClick;
  const SettingsCard({
    Key? key,
    required this.title,
    required this.body,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF29282F),
      ),
      child: ExpansionTile(
        collapsedIconColor: Colors.white,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        iconColor: Colors.white,
        title: Text(
          title,
          style: kPrimaryTitle,
        ),
        children: [
          Text(
            body,
            textAlign: TextAlign.justify,
            style: kPrimaryText,
          ),
          Container(
            width: double.infinity,
            child: InkWell(
              onTap: () {},
              child: Text(text,
                  textAlign: TextAlign.start,
                  style: kPrimaryText.copyWith(color: KLinkTextColor)),
            ),
          ),
        ],
      ),
    );
  }
}
