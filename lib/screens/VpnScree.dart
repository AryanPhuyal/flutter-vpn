import 'package:flutter/material.dart';
import 'package:vpnapp/component/CircularCenter.dart';
import 'package:vpnapp/component/CustomContainer.dart';
import 'package:vpnapp/component/SelectVpn.dart';
import 'package:vpnapp/component/SpeedMeter.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';

class VpnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Text(
              'Press Button ',
              style: kPrimaryTitle1,
              textAlign: TextAlign.center,
            ),
            Text(
              'To Turn On Vpn',
              style: kPrimaryTitle1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CircularCenter(
          icon: Icons.power_settings_new,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: CustomConrainer(
                borderRadius: 30,
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
                      'connection protected',
                      style: kPrimaryText,
                    ),
                  ],
                )),
          ),
        ),
        SelectVpn(),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            child: Row(
              children: [
                Expanded(
                    child: SpeedMeter(
                        icon: Icons.arrow_downward_rounded,
                        title: 'Download',
                        value: '0.0')),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SpeedMeter(
                    icon: Icons.arrow_upward,
                    title: 'Upload',
                    value: '0.0',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
