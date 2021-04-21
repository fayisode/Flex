import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    Key key,
    @required this.backArrowTapped,
  }) : super(key: key);

  final Function backArrowTapped;

  @override
  Widget build(BuildContext context) {
    return new Swiper(
      onIndexChanged: backArrowTapped,
      itemBuilder: (BuildContext context, index) {
        return Hero(
          tag: EventTripListData.hotelList[0].images[0],
          child: new Image.network(
            EventTripListData.hotelList[0].images[index],
            fit: BoxFit.fill,
          ),
        );
      },
      itemCount: EventTripListData.hotelList[0].images.length,

      //viewportFraction: 0.8,
      //scale: 0.9,
    );
  }
}
