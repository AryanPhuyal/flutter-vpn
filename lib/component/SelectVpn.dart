import 'package:flutter/material.dart';
import 'package:vpnapp/component/CustomContainer.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';

class SelectVpn extends StatelessWidget {
  const SelectVpn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: CustomConrainer(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          borderRadius: 30,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'United State',
                    style: kPrimaryTitle,
                  ),
                  Text(
                    'Los Angeles',
                    style: kCaptionTheme,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
