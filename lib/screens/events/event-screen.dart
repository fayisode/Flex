import 'dart:math';

import 'package:flex/constrint.dart';
import 'package:flex/models/event_trip_list.dart';

import 'package:flutter/material.dart';

import 'components/bonus_bar_card.dart';
import 'components/detail_text.dart';
import 'components/imag_page_view_bar.dart';
import 'components/search_bar.dart';
import 'components/text_bar.dart';

import 'package:sizer/sizer.dart';

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  PageController _controller;
  var currentPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);

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

  void backArrowTapped(int index) {
    setState(() {
      _controller.animateToPage(index - 1,
          duration: Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  void forwardArrowTapped(int index) {
    setState(() {
      _controller.animateToPage(index + 1,
          duration: Duration(milliseconds: 1000), curve: Curves.ease);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(kDefaultPadding * 1.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.notification_important,
                      color: LightColor.backgroundColor,
                    ),
                    onPressed: () {})
              ],
            ),
            DetailTextBar(),
            SearchBar(),
            SizedBox(
              height: 3.9.h,
            ),
            pageViewBar(),
            SizedBox(
              height: 2.6.h,
            ),
            BonusBar()
          ],
        ),
      )),
    );
  }

  Expanded pageViewBar() {
    return Expanded(
      //flex: 1,
      child: PageView.builder(
          controller: _controller,
          itemCount: EventTripListData.hotelList.length,
          itemBuilder: (context, position) {
            final page = Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ImageBar(
                  position: position,
                ),
                TextBar(position: position),
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    backArrow(position),
                    forwardArrow(position),
                  ],
                )
              ],
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
          }),
    );
  }

  Widget backArrow(int position) {
    return position >= 1
        ? CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                backArrowTapped(position);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 20,
              ),
            ),
          )
        : Text("");
  }

  Widget forwardArrow(int position) {
    return position != EventTripListData.hotelList.length - 1
        ? CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                forwardArrowTapped(position);
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 20,
              ),
            ),
          )
        : Text("");
  }
}
