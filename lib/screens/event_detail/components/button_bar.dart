import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

Padding buttonBar() {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 10, right: 20),
            height: 57,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: LightColor.backgroundColor)),
            child: Center(
              child: Text(
                "N${EventTripListData.hotelList[0].amount.floor()}",
                style: AppTheme.h5Style
                    .copyWith(color: LightColor.backgroundColor),
              ),
            )),
        Expanded(
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: LightColor.backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Book Now",
                  style: AppTheme.h5Style.copyWith(color: Colors.white),
                ),
              )),
        ),
      ],
    ),
  );
}
