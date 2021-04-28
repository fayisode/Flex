import 'package:flex/screens/flex/components/price_tag.dart';
import 'package:flex/screens/flex/components/status_bar.dart';
import 'package:flex/screens/flex/components/text_tag_price.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'button_box.dart';
import 'curver_painter.dart';
import 'line-breaker.dart';

SliverToBoxAdapter buildSliverToBoxAdapter() {
  return SliverToBoxAdapter(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 270,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
          ),
          boxShadow: [kDefaultCardShadow],
        ),
        child: Stack(
          children: <Widget>[
            PriceTags(),
            Positioned(
              right: 170,
              child: CustomPaint(
                foregroundPainter: CurverPainter(),
              ),
            ),
            TextIconTag(),
            LineBreaker(),
            ButtonBox()
          ],
        ),
      ),
      headingName("Status"),
      StatusBar(),
      headingName("Transactions"),
    ],
  ));
}

Padding headingName(String name) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Text(
      name,
      style: AppTheme.h3Style,
    ),
  );
}
