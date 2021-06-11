import 'package:flutter/material.dart';
import 'package:vpnapp/constants/TextStyleConstant.dart';
import 'package:vpnapp/constants/colorConstant.dart';
import 'package:vpnapp/constants/stringConstant.dart';
import 'package:vpnapp/screens/PrivacyPolicy.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
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
                    'Device Shild',
                    style: kPrimaryTitle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Terms & Use',
                style: kPrimaryTitle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(30),
              children: [
                Text(
                  KLongTerms,
                  textAlign: TextAlign.justify,
                  style: kPrimaryText,
                )
              ],
            )),
            Card(
              elevation: 10,
              child: Container(
                color: Color(0xFF22212A),
                height: 100,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyAndPolicy())),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        )),
                    child: Center(
                      child: Text(
                        'Agree & Suscribe',
                        style: kPrimaryTitle1,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
