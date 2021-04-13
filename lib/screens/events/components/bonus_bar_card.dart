import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class BonusBar extends StatelessWidget {
  const BonusBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.0.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kDefaultPadding * 2)),
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding * 0.7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Get a Bonus Now",
                  style: AppTheme.h2Style,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Share",
                    style: AppTheme.h6Style
                        .copyWith(color: Colors.white, fontSize: 14),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: LightColor.backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(kDefaultPadding))),
                )
              ],
            ),
            Text(
              ("What are you waiting for, invite a friend and get a chance to have 500 Naira Flex bonus"),
              style: AppTheme.h6Style.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
