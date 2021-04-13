import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class DetailTextBar extends StatelessWidget {
  const DetailTextBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 1.8.h,
        ),
        Text(
          "Flex Trips",
          style: AppTheme.h1Style.copyWith(fontSize: 30),
        ),
        SizedBox(
          height: 0.67.h,
        ),
        Text(
          "Explore the best places in the World!",
          style: AppTheme.h6Style.copyWith(color: Colors.grey),
        ),
        SizedBox(
          height: 3.9.h,
        ),
      ],
    );
  }
}
