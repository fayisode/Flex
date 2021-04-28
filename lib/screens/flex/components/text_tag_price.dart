import 'package:flex/screens/flex/components/title_tage.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TextIconTag extends StatelessWidget {
  const TextIconTag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleTage(
              amount: "111111",
              title: "Total",
              icons: Icons.payment,
              colors: LightColor.colorsCode1,
            ),
            TitleTage(
              amount: "111111",
              title: "Paid",
              icons: Icons.receipt,
              colors: LightColor.colorsCode3,
            ),
          ],
        ));
  }
}
