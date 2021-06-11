import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';
import 'package:vpnapp/constants/colorConstant.dart';
import 'package:vpnapp/constants/imageConstant.dart';
import 'package:vpnapp/screens/HomeScreen.dart';
import 'package:vpnapp/screens/TearmsOfUse.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Future.delayed(Duration(seconds: 4), () {
      if (prefs.containsKey('new')) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TermsOfUse(),
          ),
        );
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(KLogoImage),
            SizedBox(
              height: 20,
            ),
            Text(
              'device shield',
              style: kPrimaryTitle.copyWith(letterSpacing: 1, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
