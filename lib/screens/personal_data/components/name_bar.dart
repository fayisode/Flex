import 'package:flutter/material.dart';

import '../../../constrint.dart';

class NameBar extends StatelessWidget {
  const NameBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultPadding * 1.5, bottom: kDefaultPadding * 1.5),
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
                hintText: "Enter your deatils"),
          )),
    );
  }
}
