import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.0.h,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 6.7.h,
            width: 12.5.w,
            decoration: BoxDecoration(
                boxShadow: [kDefaultCardShadow],
                borderRadius: BorderRadius.circular(kDefaultPadding)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              child: Image.asset(
                "assets/images/people.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "William John Milk",
                style: AppTheme.h4Style.copyWith(fontWeight: FontWeight.bold),
              ),
              Text("Aggresive Contributor")
            ],
          ),
        ],
      ),
    );
  }
}
