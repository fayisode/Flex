import 'package:flutter/material.dart';

import '../../../constrint.dart';

Container tabBar(TabController _tabController) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10),
    child: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: LightColor.backgroundColor,
        labelColor: LightColor.backgroundColor,
        unselectedLabelColor: Colors.black54,
        tabs: <Widget>[
          Tab(
            text: ('Overview'),
          ),
          Tab(
            text: ('Details'),
          ),
          Tab(
            text: ('Schedule'),
          ),
        ]),
  );
}
