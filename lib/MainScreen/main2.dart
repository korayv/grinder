import 'package:flutter/material.dart';

import '../Drawer/Follow_us.dart';
import '../Drawer/privacy_policy.dart';
import '../Drawer/rate_us.dart';
import '../Drawer/term_of_use.dart';
import 'Main_screen.dart';

class mainpage2 extends StatelessWidget {
  const mainpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          ListTile(
            dense: true,
            title: Text("Rate Us"),
            leading: Icon(Icons.star_border_outlined),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RateUs(),
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            title: Text("Privacy Policy"),
            leading: Icon(Icons.privacy_tip_outlined),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PravicyPolicy(),
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            title: Text("Terms of Use"),
            leading: Icon(Icons.article_outlined),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TermOfUse(),
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            title: Text("Follow Us"),
            leading: Icon(Icons.thumb_up_alt_outlined),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ContactUs(
                      cardColor: Colors.white,
                      companyColor: Colors.lime,
                      companyName: 'GriNder',
                      email: 'grinder@gmail.com',
                      taglineColor: Colors.lime,
                      textColor: Colors.lime,
                      logo: AssetImage('lib/images/download.jpg'),
                      website: 'griNder.com',
                      avatarRadius: 100,
                      companyFontWeight: FontWeight.bold,
                      instagram: 'griNder',
                      facebookHandle: 'grinder',
                      linkedinURL: 'grinder',
                      phoneNumber: '0555 555 55 55',
                      dividerColor: Colors.brown,
                      companyFontSize: 50,
                      twitterHandle: 'GriNder',
                    );
                  },
                ),
              );
            },
          ),
          ListTile(
            dense: true,
            title: Text("Go Back"),
            leading: Icon(Icons.arrow_back_ios_outlined),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainScreen();
                },
              ),
            ),
          ),
        ],
      )),
    );
    ;
  }
}
