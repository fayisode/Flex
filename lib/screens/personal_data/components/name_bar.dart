import 'package:flutter/material.dart';

import '../../../constrint.dart';

class NameBar extends StatelessWidget {
  const NameBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
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
