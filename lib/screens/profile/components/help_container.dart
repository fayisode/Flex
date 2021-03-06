import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

class HelpContainer extends StatelessWidget {
  const HelpContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding * 2),
        height: kDefaultPadding * 10,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [kDefaultCardShadow],
            borderRadius: BorderRadius.circular(kDefaultPadding * 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset,
              size: kDefaultPadding * 4,
              color: LightColor.backgroundColor,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              "Feel Free to ask, We are Ready",
              style: AppTheme.h5Style,
            ),
          ],
        ),
      ),
    );
  }
}
