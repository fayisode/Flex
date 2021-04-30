import 'package:flex/constrint.dart';
import 'package:flex/screens/flex/components/button-tag.dart';
import 'package:flex/screens/personal_data/components/date_birth.dart';
import 'package:flutter/material.dart';
import 'components/transact_list.dart';
import 'components/transaction_header.dart';

class StashScreen extends StatefulWidget {
  @override
  _StashScreenState createState() => _StashScreenState();
}

class _StashScreenState extends State<StashScreen> {
  bool transacts = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: kDefaultPadding, left: kDefaultWidthPadding * 2),
                  child: Text(
                    "Stash",
                    style: AppTheme.h1Style,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: kDefaultPadding * 0.5,
                      right: 20,
                      left: 20,
                      top: 10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [kDefaultCardShadow],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 100,
                          top: 80,
                          child: Text("N200000",
                              style: AppTheme.h6Style.copyWith(
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal))),
                      Positioned(
                          right: 10,
                          bottom: 10,
                          child: Text("Stash balance",
                              style: AppTheme.h5Style.copyWith(
                                  //fontSize: 40,
                                  fontWeight: FontWeight.normal))),
                      Positioned.fill(
                          // left: -300,
                          // top: -100,
                          // bottom: -100,
                          top: -400,
                          left: -100,
                          child: Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: LightColor.backgroundColor
                                    .withOpacity(0.4)),
                          )),
                      Positioned.fill(
                          // left: -300,
                          // top: -100,
                          // bottom: -100,
                          bottom: -550,
                          right: -100,
                          left: -10,
                          child: Container(
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: LightColor.backgroundColor
                                    .withOpacity(0.4)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 5, right: 20, left: 20, top: 10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      boxShadow: [kDefaultCardShadow],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonTag(
                          onpressed: () => showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text(
                                "Withdraw",
                                style: AppTheme.h6Style,
                              ),
                              content: Text(
                                "Are you sure you want to withdraw your stash ?",
                                style: AppTheme.h6Style,
                              ),
                              actions: <Widget>[
                                // ignore: deprecated_member_use
                                FlatButton(
                                  onPressed: () {
                                    transacts = !transacts;
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text(
                                    "Yes",
                                    style: AppTheme.h6Style,
                                  ),
                                ),
                                // ignore: deprecated_member_use
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
                          ),
                          icons: Icons.arrow_downward,
                          colors: LightColor.colorsCode1,
                          texts: "Withdraw",
                        ),
                        // ButtonTag(
                        //   onpressed: () {},
                        //   icons: Icons.save_alt,
                        //   colors: LightColor.colorsCode2,
                        //   texts: "Flex",
                        // ),
                        ButtonTag(
                          onpressed: () => showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text(
                                "Top Up page",
                                style: AppTheme.h6Style,
                              ),
                              content: Text(
                                "This goes to top up page, payment are left our for now?",
                                style: AppTheme.h6Style,
                              ),
                              actions: <Widget>[
                                // ignore: deprecated_member_use
                                FlatButton(
                                  onPressed: () {
                                    transacts = !transacts;
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text(
                                    "Yes",
                                    style: AppTheme.h6Style,
                                  ),
                                ),
                                // ignore: deprecated_member_use
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
                          ),
                          icons: Icons.arrow_upward,
                          colors: LightColor.colorsCode3,
                          texts: "Top Up",
                        ),
                        ButtonTag(
                          onpressed: () {
                            setState(() {
                              transacts = !transacts;
                            });
                          },
                          icons: Icons.add,
                          colors: LightColor.colorsCode2,
                          texts: "Join",
                        ),
                      ],
                    ),
                  ),
                ),
                transacts == true
                    ? TransactionHeader()
                    : Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Make new payment",
                              style: AppTheme.h5Style,
                            ),
                            DateBirthBar(
                              topPadding: 10,
                              text: "Amount",
                            ),
                            DateBirthBar(
                              topPadding: 10,
                              text: "Registration",
                            ),
                            DateBirthBar(
                              topPadding: 10,
                              text: "Amount",
                            ),
                            DateBirthBar(
                              topPadding: 10,
                              text: "Amount",
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: TextButton(
                                  onPressed: () => showDialog(
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
                                                transacts = !transacts;
                                                Navigator.of(ctx).pop();
                                              },
                                              child: Text(
                                                "Yes",
                                                style: AppTheme.h6Style,
                                              ),
                                            ),
                                            // ignore: deprecated_member_use
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
                                      ),
                                  style: TextButton.styleFrom(
                                      backgroundColor:
                                          LightColor.backgroundColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                  child: Container(
                                    height: 30,
                                    width: double.infinity,
                                    child: Center(
                                      child: Text(
                                        "Top Up",
                                        style: AppTheme.h6Style
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ) //TopUp()
              ],
            ),
          ),
          // transacts == true ? TransactList() :
          if (transacts == true) TransactList()
        ],
      )),
    );
  }
}
