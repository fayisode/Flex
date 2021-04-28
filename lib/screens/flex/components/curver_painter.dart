import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'dart:math' as math;

class CurverPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = LightColor.backgroundColor;

    canvas.drawArc(Rect.fromCircle(center: Offset(80, 90), radius: 60), -20.5,
        math.pi * 1.4, false, smilePaint);
    print(math.pi * 1.3);
    canvas.drawCircle(Offset(80, 90), 60, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
