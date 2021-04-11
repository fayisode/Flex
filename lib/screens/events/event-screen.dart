import 'package:flex/constrint.dart';

import 'package:flutter/material.dart';
import 'components/detail_sliver_delegate.dart';
import 'components/hotel_bart.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
            "https://images.pexels.com/photos/2311713/pexels-photo-2311713.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            roundedHeight,
            "Events"));
  }
}
