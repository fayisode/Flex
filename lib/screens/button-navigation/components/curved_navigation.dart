import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

import 'icon_data.dart';

CurvedNavigationBar buildCurvedNavigationBar(
    final Function bottomTapped, int _selectedPageIndex) {
  return CurvedNavigationBar(
    height: 60,
    onTap: (index) {
      bottomTapped(index);
    },
    index: _selectedPageIndex,
    backgroundColor: Colors.white,
    color: LightColor.backgroundColor,
    items: IconDatas.icon,
  );
}
