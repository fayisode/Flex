import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class IconBar extends StatelessWidget {
  const IconBar(
      {Key key,
      @required this.text1,
      @required this.text2,
      @required this.onpressed,
      @required this.iconAssets})
      : super(key: key);
  final text1;
  final text2;
  final iconAssets;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
            elevation: 5,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultPadding))),
        child: Row(
          children: <Widget>[
            Image.asset(
              iconAssets,
              height: 9.0.h,
              width: 15.0.w,
              //color: Colors.white,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: AppTheme.h2Style.copyWith(fontSize: 18.0.sp),
                ),
                SizedBox(
                  height: kDefaultPadding * 0.5,
                ),
                Container(
                  width: 66.0.w,
                  child: AutoSizeText(
                    text2,
                    maxLines: 3,
                    style: AppTheme.h6Style,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
