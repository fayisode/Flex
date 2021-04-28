import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'button-tag.dart';

class ButtonBox extends StatelessWidget {
  const ButtonBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: Container(
        margin: EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonTag(
              onpressed: () {},
              icons: Icons.arrow_downward,
              colors: LightColor.backgroundColor,
              texts: "Withdraw",
            ),
            SizedBox(
              width: 30,
            ),
            ButtonTag(
              onpressed: () {},
              icons: Icons.save_alt,
              colors: LightColor.colorsCode3,
              texts: "Stash",
            ),
            SizedBox(
              width: 30,
            ),
            ButtonTag(
              onpressed: () {},
              icons: Icons.arrow_upward,
              colors: LightColor.colorsCode1,
              texts: "Top Up",
            ),
          ],
        ),
      ),
    );
  }
}
