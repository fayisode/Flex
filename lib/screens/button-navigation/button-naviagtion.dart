import 'dart:math';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flex/constrint.dart';
import 'package:flex/screens/events/event-screen.dart';
import 'package:flex/screens/flex/flex_screen.dart';
import 'package:flex/screens/homepage/homepage.dart';
import 'package:flex/screens/stash/stash-screen.dart';
import 'package:flex/screens/transactions/transaction_screen.dart';
// import 'package:flex/screens/trips/trip_screen.dart';
import 'package:flutter/material.dart';

class ButtonNaviagtion extends StatefulWidget {
  @override
  _ButtonNaviagtionState createState() => _ButtonNaviagtionState();
}

class _ButtonNaviagtionState extends State<ButtonNaviagtion> {
  PageController _controller;
  var currentPageValue = 0.0;
  int _selectedPageIndex = 2;
  final List<Widget> _pages = [
    StashScreen(),
    EventScreen(),
    FlexScreen(),
    EventScreen(),
    TransactionScreen()
  ];
  final List<Widget> _icon = [
    Icon(Icons.stacked_bar_chart, size: 30, color: Colors.white),
    //
    // Image.asset(
    //   "assets/images/stash.png",
    //   height: 30,
    //   width: 30,
    //   color: Colors.white,
    // ),
    // Image.asset(
    //   "assets/images/event.png",
    //   height: 30,
    //   width: 30,
    //   //color: Colors.white,
    // ),
    // Image.asset(
    //   "assets/images/flex_image.png",
    //   height: 30,
    //   width: 30,
    //   //color: Colors.white,
    // ),

    // Image.asset(
    //   "assets/images/tour.png",
    //   height: 30,
    //   width: 30,
    //   //color: Colors.white,
    // ),
    // Image.asset(
    //   "assets/images/profile.png",
    //   height: 30,
    //   width: 30,
    //   //color: Colors.white,
    // ),
    Icon(Icons.add, size: 20, color: Colors.white),
    Icon(Icons.radio, size: 20, color: Colors.white),
    Icon(Icons.list, size: 20, color: Colors.white),
    Icon(Icons.compare_arrows, size: 20, color: Colors.white),
  ];
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 2);

    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page;

        //_selectedPageIndex = currentPageValue.toInt();
//        currentPageValue = 0.5;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
      _controller.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                _selectPage(index);
              },
              itemCount: _pages.length,
              itemBuilder: (context, position) {
                final page = Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.1),
                  child: _pages[position],
                );

                // From page
                if (position == currentPageValue.floor()) {
                  return Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0015) // perspective
                      ..rotateY(-pi / 16 * (currentPageValue - position)),
                    child: page,
                  );
                }
                // To page
                else if (position == currentPageValue.floor() + 1) {
                  return Transform(
                    alignment: FractionalOffset.topRight,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.0015) // perspective
                      ..rotateY(-pi / 16 * (currentPageValue - position)),
                    child: page,
                  );
                }
                // Other page (not in current view)
                else {
                  return page;
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        onTap: (index) {
          bottomTapped(index);
        },
        index: _selectedPageIndex,
        backgroundColor: Colors.white,
        color: LightColor.backgroundColor,
        items: _icon,
      ),
    );
  }
}
