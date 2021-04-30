import 'package:flutter/material.dart';

import '../../../constrint.dart';

class DateBirthBar extends StatelessWidget {
  const DateBirthBar({
    @required this.text,
    @required this.topPadding,
    Key key,
  }) : super(key: key);
  final String text;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topPadding, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kDefaultPadding * 1.2)),
      child: Padding(
          padding: EdgeInsets.all(kDefaultPadding * 0.8),
          child: TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(
                    left: kDefaultWidthPadding * 1.5,
                    bottom: kDefaultPadding,
                    top: kDefaultPadding,
                    right: kDefaultWidthPadding * 3.7),
                hintText: text),
          )),
    );
  }
}
