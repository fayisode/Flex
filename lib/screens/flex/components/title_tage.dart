import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TitleTage extends StatelessWidget {
  const TitleTage({
    @required this.icons,
    @required this.title,
    @required this.amount,
    @required this.colors,
    Key key,
  }) : super(key: key);
  final String title;
  final String amount;
  final IconData icons;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10, right: 10, left: 20, top: 10),
          height: 48,
          width: 2,
          decoration: BoxDecoration(
            color: colors.withOpacity(0.5),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style:
                  AppTheme.h6Style.copyWith(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                Icon(
                  icons,
                  size: 16,
                  color: colors,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  amount,
                  style: AppTheme.h6Style.copyWith(fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Naira",
                  style: AppTheme.h6Style
                      .copyWith(fontSize: 10, color: Colors.grey),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
