import 'package:flex/screens/event_detail/components/tab_bar_view_element.dart';
import 'package:flex/screens/event_detail/components/tab_container.dart';
import 'package:flutter/material.dart';

import 'amount_bar.dart';
import 'button_bar.dart';
import 'icon_bar.dart';

class SliverBoxAdapterElements extends StatelessWidget {
  const SliverBoxAdapterElements({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Column(
            children: <Widget>[
              AmountBar(),
              tabBar(_tabController),
              TabBarViewElement(tabController: _tabController),
              Iconbar(),
              buttonBar()
            ],
          ),
        ),
      ),
    );
  }
}
