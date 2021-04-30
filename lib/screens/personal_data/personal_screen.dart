import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class PersonalData extends StatelessWidget {
  static final routeName = "/profile-data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: Body(),
    );
  }
}
