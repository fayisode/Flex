import 'package:auto_size_text/auto_size_text.dart';
import 'package:flex/screens/flex/components/menu.dart';
import 'package:flex/screens/homepage/components/profile_picture.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../constrint.dart';
import 'logo_name.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(backgroundColor: Colors.transparent, title: LogoName()),
        SliverToBoxAdapter(
            child: Container(
          height: 250,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
              )),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 55,
                top: 70,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                      height: 25,
                      child: AutoSizeText(
                        "10000",
                        textAlign: TextAlign.center,
                        style: AppTheme.h2Style.copyWith(fontSize: 20),
                      ),
                    ),
                    Text(
                      "Naira Left",
                      textAlign: TextAlign.center,
                      style: AppTheme.h6Style
                          .copyWith(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 170,
                child: CustomPaint(
                  foregroundPainter: CurverPainter(),
                ),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}

class CurverPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.withOpacity(0.4)
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = LightColor.backgroundColor;

    canvas.drawArc(Rect.fromCircle(center: Offset(80, 90), radius: 70), -20.5,
        math.pi * 1.4, false, smilePaint);
    print(math.pi * 1.3);
    canvas.drawCircle(Offset(80, 90), 70, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
