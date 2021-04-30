import 'package:flex/screens/events/event-screen.dart';
import 'package:flex/screens/flex/flex_screen.dart';
import 'package:flex/screens/profile/profile_screen.dart';
import 'package:flex/screens/stash/stash-screen.dart';
import 'package:flutter/material.dart';

class IconDatas {
  static final List<Widget> pages = [
    StashScreen(),
    EventScreen(),
    FlexScreen(),
    EventScreen(),
    ProfileScreen()
  ];
  static final List<Widget> icon = [
    Icon(Icons.save_alt_sharp, size: 30, color: Colors.white),
    Icon(Icons.airplanemode_active, size: 20, color: Colors.white),
    Icon(Icons.next_plan, size: 20, color: Colors.white),
    Icon(Icons.local_drink, size: 20, color: Colors.white),
    Icon(Icons.person, size: 20, color: Colors.white),
  ];
}
