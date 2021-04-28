import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

class ButtonTag extends StatelessWidget {
  const ButtonTag({
    @required this.onpressed,
    @required this.icons,
    @required this.colors,
    @required this.texts,
    Key key,
  }) : super(key: key);
  final Function onpressed;
  final IconData icons;
  final Color colors;
  final String texts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              boxShadow: [kDefaultCardShadow],
              color: colors,
              borderRadius: BorderRadius.circular(20)),
          child: IconButton(
            onPressed: onpressed,
            icon: Icon(
              icons,
              color: Colors.white,
            ),
          ),
        ),
        Text(texts)
      ],
    );
  }
}
