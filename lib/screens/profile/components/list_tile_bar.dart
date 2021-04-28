import 'package:flutter/material.dart';

import '../../../constrint.dart';

class ListTileBar extends StatelessWidget {
  const ListTileBar({
    @required this.icons,
    @required this.onpressed,
    @required this.text,
    Key key,
  }) : super(key: key);
  final String text;
  final Function onpressed;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpressed,
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [kDefaultCardShadow]),
        child: Icon(
          icons,
          color: Colors.black,
        ),
      ),
      title: Text(
        text,
        style: AppTheme.h5Style,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 16,
      ),
    );
  }
}
