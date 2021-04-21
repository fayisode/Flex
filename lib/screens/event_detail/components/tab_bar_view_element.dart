import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';

class TabBarViewElement extends StatelessWidget {
  const TabBarViewElement({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10, left: 10, right: 10),
      height: 70,
      child: TabBarView(
        children: <Widget>[
          Text(EventTripListData.hotelList[0].description),
          Text("AAA"),
          Text("AAA"),
        ],
        controller: _tabController,
      ),
    );
  }
}
