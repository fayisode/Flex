import 'package:flutter/material.dart';

import 'head_stack_test.dart';
import 'header_bar.dart';
import 'header_button.dart';
import 'header_swiper_indicator.dart';
import 'header_swiper_widget.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody(
      {Key key,
      @required this.backArrowTapped,
      @required this.indexs,
      @required this.expandedHeight,
      @required this.roundedContainerHeight,
      @required this.shrinkOffset})
      : super(key: key);

  final Function backArrowTapped;
  final int indexs;
  final double expandedHeight;
  final double roundedContainerHeight;
  final double shrinkOffset;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SwiperWidget(backArrowTapped: backArrowTapped),
        HeaderButton(),
        SwiperIndicator(indexs: indexs),
        HeaderBar(
          expandedHeight: expandedHeight,
          roundedContainerHeight: roundedContainerHeight,
          shrinkOffset: shrinkOffset,
        ),
        HeaderStackText(
          expandedHeight: expandedHeight,
          shrinkOffset: shrinkOffset,
        )
      ],
    );
  }
}
