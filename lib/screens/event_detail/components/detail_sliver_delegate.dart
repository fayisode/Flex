import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'header_body.dart';

class DetailsSliverDelage extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;
  final Function backArrowTapped;
  int indexs;

  DetailsSliverDelage(this.expandedHeight, this.roundedContainerHeight,
      this.backArrowTapped, this.indexs);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: HeaderBody(
          backArrowTapped: backArrowTapped,
          indexs: indexs,
          expandedHeight: expandedHeight,
          roundedContainerHeight: roundedContainerHeight,
          shrinkOffset: shrinkOffset,
        ));
  }

  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
