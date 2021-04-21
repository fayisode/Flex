import 'package:flex/constrint.dart';

import './components/body.dart';
import 'package:flutter/material.dart';

class FlexScreen extends StatefulWidget {
  @override
  _FlexScreenState createState() => _FlexScreenState();
}

class _FlexScreenState extends State<FlexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: Body(),
    );
  }
}
