import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';
import 'components/backgroung_image.dart';
import 'components/bar-element.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackGroundImage(),
            Container(
              margin: EdgeInsets.only(right: 40, left: 10, top: 30),
              child: Text(
                "There's flex for everyone . . .",
                style: AppTheme.h2Style
                    .copyWith(fontSize: 30, color: Colors.white),
              ),
            ),
            BarElements(),
          ],
        ),
      ),
    );
  }
}
