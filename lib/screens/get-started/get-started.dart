import 'package:flutter/material.dart';
import 'components/backgroung_image.dart';
import 'components/bar-element.dart';

class GetStarted extends StatelessWidget {
  static const routeName = "/get-started";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackGroundImage(),
            BarElements(),
          ],
        ),
      ),
    );
  }
}
