import 'package:flex/constrint.dart';
import 'package:flex/screens/personal_data/personal_screen.dart';
import 'package:flex/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

import 'list_tile_bar.dart';

class BodyTile extends StatelessWidget {
  const BodyTile({
    Key key,
  }) : super(key: key);
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      PersonalData.routeName,
    );
  }

  void selectSettings(BuildContext context) {
    Navigator.of(context).pushNamed(
      SettingScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTileBar(
          text: "Personal Data",
          icons: Icons.verified_user,
          onpressed: () => selectCategory(context),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        ListTileBar(
          text: "Settings",
          icons: Icons.settings,
          onpressed: () => selectSettings(context),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        ListTileBar(
            text: "E-Statement",
            icons: Icons.pages,
            onpressed: () => showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      "E-Statement",
                      style: AppTheme.h6Style,
                    ),
                    content: Text(
                      "Do you want to generate an E-Statement?",
                      style: AppTheme.h6Style,
                    ),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "Yes",
                          style: AppTheme.h6Style,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "No",
                          style: AppTheme.h6Style,
                        ),
                      ),
                    ],
                  ),
                )),

        SizedBox(
          height: kDefaultPadding,
        ),
        ListTileBar(
            text: "Referral Code",
            icons: Icons.favorite_outline,
            onpressed: () => showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      "E-Statement",
                      style: AppTheme.h6Style,
                    ),
                    content: Text(
                      "This generate a refereal code. Wil finish it up after review?",
                      style: AppTheme.h6Style,
                    ),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "Yes",
                          style: AppTheme.h6Style,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "No",
                          style: AppTheme.h6Style,
                        ),
                      ),
                    ],
                  ),
                )),

        SizedBox(
          height: kDefaultPadding,
        ),
        Divider(
          height: kDefaultPadding * 0.3,
          color: Colors.grey,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        // ListTileBar(
        //   text: "FAQs",
        //   icons: Icons.format_quote,
        //   onpressed: () {},
        // ),
        // SizedBox(
        //   height: kDefaultPadding,
        // ),
        ListTileBar(
          text: "Support",
          icons: Icons.support,
          onpressed: () {},
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        ListTileBar(
            text: "Log out",
            icons: Icons.logout,
            onpressed: () => showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      "Log Out",
                      style: AppTheme.h6Style,
                    ),
                    content: Text(
                      "Are you sure you want to log out?",
                      style: AppTheme.h6Style,
                    ),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "Yes",
                          style: AppTheme.h6Style,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "No",
                          style: AppTheme.h6Style,
                        ),
                      ),
                    ],
                  ),
                )),
      ],
    );
  }
}
