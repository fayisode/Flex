import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class SwiperIndicator extends StatelessWidget {
  const SwiperIndicator({
    Key key,
    @required this.indexs,
  }) : super(key: key);

  final int indexs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0;
              i <= EventTripListData.hotelList[0].images.length - 1;
              i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height: 10,
                width: 10,
                color:
                    (i == indexs) ? Colors.white : LightColor.backgroundColor,
                //decoration:
              ),
            ),
        ],
      ),
    );
  }
}
