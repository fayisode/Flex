import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LightColor.scaffoldBackgroundColor, body: Body());
  }
}
