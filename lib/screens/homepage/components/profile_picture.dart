import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/people.png"),
      radius: kDefaultWidthPadding * 10,
    );
  }
}
