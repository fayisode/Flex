import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TextButtonClass extends StatelessWidget {
  const TextButtonClass({Key key, @required this.texts, @required this.ontap})
      : super(key: key);
  final String texts;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      child: Text(
        texts,
        style: AppTheme.h3Style,
      ),
      style: TextButton.styleFrom(
          // animationDuration: Duration(milliseconds: 500),
          elevation: 5,
          backgroundColor: LightColor.backgroundColor,
          padding: EdgeInsets.all(kDefaultPadding * 1.3),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kDefaultPadding * 1.3))),
    );
  }
}
