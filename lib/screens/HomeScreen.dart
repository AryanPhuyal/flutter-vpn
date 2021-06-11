import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpnapp/component/ButtonNavigationBar.dart';
import 'package:vpnapp/constants/colorConstant.dart';
import 'package:vpnapp/screens/AidBlockerScreen.dart';
import 'package:vpnapp/screens/SettingdScree.dart';

import 'VpnScree.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var activeScreen = 0;
  List<Widget> widgets = [
    VpnScreen(),
    AidBlockerScreen(),
    SettingsScreen(),
  ];
  void toggleActiveScreen(int index) {
    setState(() {
      activeScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: widgets[activeScreen],
      bottomNavigationBar: ButtonNavigationBar(
        activeScreen: activeScreen,
        toggleScreen: toggleActiveScreen,
      ),
    );
  }
}
