import 'package:flex/screens/homepage/components/flex_logo_child.dart';
import 'package:flex/screens/homepage/components/profile_picture.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class LogoName extends StatelessWidget {
  const LogoName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Flex",
          style: AppTheme.h2Style.copyWith(letterSpacing: 2),
        ),
        Row(
          children: <Widget>[
            Text(
              "Akinfela",
              style: AppTheme.h4Style,
            ),
            SizedBox(
              width: 10,
            ),
            ProfilePicture(
              radiusHeight: kDefaultWidthPadding * 1.5,
            )
          ],
        )
      ],
    );
  }
}
