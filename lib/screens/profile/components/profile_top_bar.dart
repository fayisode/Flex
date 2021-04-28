import 'package:flutter/material.dart';

import '../../../constrint.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: [kDefaultCardShadow],
                borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
