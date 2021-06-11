import 'package:flutter/material.dart';
import 'package:vpnapp/component/SettigsCard.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';
import 'package:vpnapp/constants/stringConstant.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shield,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Device Shild",
                style: kPrimaryTitle,
              ),
            ],
          ),
        ),
        SettingsCard(
          body: KShortTerms,
          title: "Terms",
          text: "Read full terms and condition",
          onClick: () {},
        ),
        SettingsCard(
          body: KShortPrivacy,
          title: "Privacy",
          text: "Read full terms and condition",
          onClick: () {},
        ),
        SettingsCard(
          body: KRestoreShort,
          title: "Restore",
          text: "Read full terms and condition",
          onClick: () {},
        ),
      ],
    ));
  }
}
