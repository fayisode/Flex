import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TextBar extends StatelessWidget {
  final int position;
  const TextBar({Key key, this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: kDefaultPadding,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${EventTripListData.hotelList[position].titleTxt}",
                style: AppTheme.h2Style.copyWith(color: Colors.white),
              ),
              Text(
                "${EventTripListData.hotelList[position].location}",
                style: AppTheme.h6Style.copyWith(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
