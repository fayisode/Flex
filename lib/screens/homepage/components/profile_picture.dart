import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key key, @required this.radius}) : super(key: key);
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/people.png"),
      radius: radius,
    );
  }
}
