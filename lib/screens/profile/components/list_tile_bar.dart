import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
        height: 5.4.h,
        width: 10.0.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding),
            color: Colors.white,
            boxShadow: [kDefaultCardShadow]),
        child: Icon(
          icons,
          color: LightColor.backgroundColor,
        ),
      ),
      title: Text(
        text,
        style: AppTheme.h5Style,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: kDefaultPadding * 1.6,
      ),
    );
  }
}
