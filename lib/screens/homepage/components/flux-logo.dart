import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FluxLogo extends StatelessWidget {
  const FluxLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0.6.h,
        left: 1.0.w,
        child: SizedBox(
          height: 7.0.h,
          width: 13.0.w,
          child: Image.asset(
            "assets/images/flex.png",
          ),
        ));
  }
}
