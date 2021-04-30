import 'package:flutter/material.dart';
import 'dart:math';

class FromPageTransformation extends StatelessWidget {
  const FromPageTransformation({
    Key key,
    @required this.currentPageValue,
    @required this.position,
    @required this.page,
  }) : super(key: key);
  final int position;
  final double currentPageValue;
  final Padding page;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.0015) // perspective
        ..rotateY(-pi / 16 * (currentPageValue - position)),
      child: page,
    );
  }
}
