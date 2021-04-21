import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class HeaderStackText extends StatelessWidget {
  const HeaderStackText(
      {Key key, @required this.expandedHeight, @required this.shrinkOffset})
      : super(key: key);

  final double expandedHeight;
  final double shrinkOffset;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: expandedHeight - 120 - shrinkOffset,
      left: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            EventTripListData.hotelList[0].titleTxt,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(EventTripListData.hotelList[0].location,
              style:
                  AppTheme.h6Style.copyWith(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }
}
