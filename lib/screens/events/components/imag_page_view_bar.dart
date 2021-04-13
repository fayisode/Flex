import 'package:flex/constrint.dart';
import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

class ImageBar extends StatelessWidget {
  final int position;
  const ImageBar({Key key, this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
          tag: EventTripListData.hotelList[position].images[0],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kDefaultPadding * 1.3),
            child: Image.network(
              EventTripListData.hotelList[position].images[0],
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
