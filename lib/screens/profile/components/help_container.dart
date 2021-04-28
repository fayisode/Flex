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
        margin: EdgeInsets.only(top: 20),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [kDefaultCardShadow],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.headset,
              size: 40,
              color: LightColor.backgroundColor,
            ),
            SizedBox(
              width: 10,
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
