import 'package:flex/screens/button-navigation/button-naviagtion.dart';
import 'package:flex/screens/get-started/get-started.dart';
import 'package:flex/screens/personal_data/personal_screen.dart';
import 'package:flex/screens/settings/settings_screen.dart';
import 'package:flex/screens/stash/components/top_up.dart';
import 'package:flex/screens/topup/components/next_page_screen.dart';
import 'package:flex/screens/topup/top_up_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'constrint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //return LayoutBuilder
      builder: (context, constraints) {
        return OrientationBuilder(
          //return OrientationBuilder
          builder: (context, orientation) {
            //initialize SizerUtil()
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return MaterialApp(
              title: 'Grocey Plus',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme.copyWith(
                textTheme: GoogleFonts.muliTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              //home: '/',
              initialRoute: '/',
              routes: {
                '/': (ctx) => NextPage(),
                //'/': (ctx) => SettingScreen(),
                //'/': (ctx) => HomePage(),
                GetStarted.routeName: (ctx) => GetStarted(),
                ButtonNaviagtion.routeName: (ctx) => ButtonNaviagtion(),
                PersonalData.routeName: (ctx) => PersonalData(),
                SettingScreen.routeName: (ctx) => SettingScreen()
              },
            );
          },
        );
      },
    );
  }
}
