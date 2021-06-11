import 'package:flutter/material.dart';
import 'package:vpnapp/constants/colorConstant.dart';

import 'CustomContainer.dart';

class ButtonNavigationBar extends StatelessWidget {
  final int activeScreen;
  final Function toggleScreen;
  const ButtonNavigationBar({
    Key? key,
    required this.activeScreen,
    required this.toggleScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
      width: MediaQuery.of(context).size.width / 1.1,
      height: 70,
      child: CustomConrainer(
          borderRadius: 30,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(0),
                  icon: Icon(
                    Icons.public,
                    color: activeScreen == 0
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(1),
                  icon: Icon(
                    Icons.pan_tool,
                    color: activeScreen == 1
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () => toggleScreen(2),
                  icon: Icon(
                    Icons.settings,
                    color: activeScreen == 2
                        ? KPrimaryGreen
                        : Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
