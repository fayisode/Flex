import 'package:flex/constrint.dart';
import 'package:flex/screens/events/components/event_trip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
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
          }))
        ],
      )),
    );
  }
}
