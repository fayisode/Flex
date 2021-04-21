import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class AmountBar extends StatelessWidget {
  const AmountBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "N${EventTripListData.hotelList[0].amount.floor()}",
              style:
                  AppTheme.h1Style.copyWith(color: LightColor.backgroundColor),
            ),
            Text(
              "Per Perx",
              style: AppTheme.h6Style.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
