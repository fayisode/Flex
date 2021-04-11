import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        height: 330,
        width: double.infinity,
        child: InkWell(
          onTap: () {},
          child: Stack(
            alignment: Alignment.topCenter,
            //fit: StackFit.expand,
            children: [
              Positioned(
                  bottom: 10,
                  child: Container(
                    height: 130,
                    width: 350,
                    decoration: BoxDecoration(
                        boxShadow: [kDefaultShadow],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                EventTripListData.hotelList[index].titleTxt,
                                style: AppTheme.h2Style,
                              ),
                              Text(
                                  "N${EventTripListData.hotelList[index].amount.floor().toString()}",
                                  style: AppTheme.h2Style)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                      "${EventTripListData.hotelList[index].location} ",
                                      style: AppTheme.h5Style.copyWith(
                                          fontSize: 14, color: Colors.grey)),
                                  Icon(
                                    Icons.location_on,
                                    color: LightColor.backgroundColor,
                                    size: 14,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                      '${DateFormat.MMMEd().format(EventTripListData.hotelList[index].departDate)} - ${DateFormat.MMMEd().format(EventTripListData.hotelList[index].retDate)} ',
                                      style: AppTheme.h6Style
                                          .copyWith(color: Colors.grey)),
                                  Icon(
                                    Icons.date_range,
                                    color: LightColor.backgroundColor,
                                    size: 14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
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
        ),
      );
    }, childCount: EventTripListData.hotelList.length));
  }
}
