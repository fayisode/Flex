import 'package:flutter/material.dart';

import '../../../constrint.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar(
      {Key key,
      @required this.expandedHeight,
      @required this.roundedContainerHeight,
      @required this.shrinkOffset})
      : super(key: key);
  final double shrinkOffset;
  final double expandedHeight;
  final double roundedContainerHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: expandedHeight - roundedContainerHeight - shrinkOffset,
      left: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: roundedContainerHeight,
        decoration: BoxDecoration(
          color: LightColor.scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
