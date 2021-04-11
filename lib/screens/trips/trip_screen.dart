import 'package:flex/screens/events/components/detail_sliver_delegate.dart';
import 'package:flex/screens/events/components/hotel_bart.dart';
import 'package:flutter/material.dart';

import '../../constrint.dart';

class TripScreen extends StatefulWidget {
  @override
  _TripScreenState createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  final double expandedHeight = 300;
  final double roundedHeight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          _buildSliverHead(),
          HotelBar(),
        ],
      )),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
            expandedHeight,
            "https://images.pexels.com/photos/917510/pexels-photo-917510.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            roundedHeight,
            "Trips"));
  }
}
