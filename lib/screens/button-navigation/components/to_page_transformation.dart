import 'package:flutter/material.dart';
import 'dart:math';

class ToPageTransform extends StatelessWidget {
  const ToPageTransform(
      {Key key,
      @required this.currentPageValue,
      @required this.page,
      @required this.position})
      : super(key: key);

  final double currentPageValue;
  final Padding page;
  final int position;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.topRight,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.0015) // perspective
        ..rotateY(-pi / 16 * (currentPageValue - position)),
      child: page,
    );
  }
}
