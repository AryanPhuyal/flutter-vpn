import 'package:flutter/material.dart';
import 'package:vpnapp/component/CircularCenter.dart';
import 'package:vpnapp/component/CustomContainer.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';
import 'package:vpnapp/constants/colorConstant.dart';

class AidBlockerScreen extends StatelessWidget {
  static const routeName = '/aidblocker-screen';
  const AidBlockerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
                'To Turn AdBlock',
                style: kPrimaryTitle1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          CircularCenter(
            icon: Icons.pan_tool,
            gradent: KSecondaryGradent,
          ),
          adBlockerRow(Icons.check_circle_outline_outlined, "Block All",
              Colors.green, () {}),
          adBlockerRow(Icons.more_horiz, "Settings", Colors.white, () {}),
        ],
      ),
    ));
  }

  Container adBlockerRow(
      IconData icon, String title, Color iconColor, Function onCLick) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: InkWell(
        onTap: () => onCLick(),
        child: CustomConrainer(
            padding: EdgeInsets.all(20),
            borderRadius: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: kPrimaryTitle,
                ),
                Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                )
              ],
            )),
      ),
    );
  }
}
