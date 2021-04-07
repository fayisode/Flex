import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class IconBar extends StatelessWidget {
  const IconBar(
      {Key key,
      @required this.text1,
      @required this.text2,
      @required this.iconAssets})
      : super(key: key);
  final text1;
  final text2;
  final iconAssets;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          {}
        },
        style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultPadding))),
        child: Row(
          children: <Widget>[
            Image.asset(
              iconAssets,
              height: 60,
              width: 60,
              //color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: AppTheme.h2Style.copyWith(fontSize: 18.0.sp),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  text2,
                  style: AppTheme.h6Style,
                )
              ],
            )
          ],
        ));
  }
}
