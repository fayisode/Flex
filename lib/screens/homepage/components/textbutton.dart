import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TextButtonClass extends StatelessWidget {
  const TextButtonClass({Key key, @required this.texts}) : super(key: key);
  final String texts;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
