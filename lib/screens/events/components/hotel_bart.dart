import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'event_trip_list.dart';

class HotelBar extends StatelessWidget {
  const HotelBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return Container(
        margin: EdgeInsets.all(kDefaultPadding),
        height: 350,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          //fit: StackFit.expand,
          children: [
            Positioned(
                bottom: 10,
                child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        boxShadow: [kDefaultShadow],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)))),
            Container(
              height: 250,
              width: 330,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    EventTripListData.hotelList[index].images[0],
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        ),
      );
    }, childCount: EventTripListData.hotelList.length));
  }
}
