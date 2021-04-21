import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FlexIcon extends StatelessWidget {
  const FlexIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.0.h,
      width: 13.0.w,
      child: Image.asset(
        "assets/images/flex.png",
      ),
    );
  }
}
