import 'package:flex/constrint.dart';
import 'package:flex/screens/flex/components/button-tag.dart';
import 'package:flutter/material.dart';

import 'components/top_up.dart';

class StashScreen extends StatefulWidget {
  @override
  _StashScreenState createState() => _StashScreenState();
}

class _StashScreenState extends State<StashScreen> {
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
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Text(
                    "Stash",
                    style: AppTheme.h1Style,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 5, right: 20, left: 20, top: 10),
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
                          top: 60,
                          child: Center(
                            child: Column(
                              children: [
                                Text("N200000",
                                    style: AppTheme.h6Style.copyWith(
                                        fontSize: 40,
                                        fontWeight: FontWeight.normal)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Stash Balance",
                                  style: AppTheme.h1Style,
                                ),
                              ],
                            ),
                          )),
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
                          onpressed: () {},
                          icons: Icons.arrow_downward,
                          colors: LightColor.colorsCode1,
                          texts: "Withdraw",
                        ),
                        ButtonTag(
                          onpressed: () {},
                          icons: Icons.save_alt,
                          colors: LightColor.colorsCode2,
                          texts: "Flex",
                        ),
                        ButtonTag(
                          onpressed: () {},
                          icons: Icons.arrow_upward,
                          colors: LightColor.colorsCode3,
                          texts: "Top Up",
                        ),
                        ButtonTag(
                          onpressed: () {},
                          icons: Icons.add,
                          colors: LightColor.backgroundColor,
                          texts: "Join",
                        ),
                      ],
                    ),
                  ),
                ),
                //TransactionHeader(),
                TopUp()
              ],
            ),
          ),
          //TransactList()
        ],
      )),
    );
  }
}
