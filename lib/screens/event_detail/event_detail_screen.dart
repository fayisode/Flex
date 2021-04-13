import 'package:flex/constrint.dart';
import 'package:flex/models/event_trip_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class EventDetailSceen extends StatefulWidget {
  @override
  _EventDetailSceenState createState() => _EventDetailSceenState();
}

class _EventDetailSceenState extends State<EventDetailSceen>
    with TickerProviderStateMixin {
  int indexs = 0;
  void backArrowTapped(int index) {
    setState(() {
      indexs = index;
    });
  }

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          _buildSliverHead(),
          SliverToBoxAdapter(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "N${EventTripListData.hotelList[0].amount.floor()}",
                              style: AppTheme.h1Style
                                  .copyWith(color: LightColor.backgroundColor),
                            ),
                            Text(
                              "Per Perx",
                              style:
                                  AppTheme.h6Style.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
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
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 20, top: 10, left: 10, right: 10),
                      height: 70,
                      child: TabBarView(
                        children: <Widget>[
                          Text(EventTripListData.hotelList[0].description),
                          Text("AAA"),
                          Text("AAA"),
                        ],
                        controller: _tabController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://t4.ftcdn.net/jpg/00/79/95/93/240_F_79959389_zJWR36jJBbAIPFEl5GZzohqQDLQDbSbR.jpg",
                                    height: 20,
                                  ),
                                  Text(
                                    " 5 days",
                                    style: AppTheme.h6Style
                                        .copyWith(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(
                                "Duration",
                                style: AppTheme.h6Style
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://t4.ftcdn.net/jpg/02/45/06/85/240_F_245068502_4edjDYUjTNHbs1AZhMbDH0Zs8yzAJcxE.jpg",
                                    height: 20,
                                  ),
                                  Text(
                                    " 5 days",
                                    style: AppTheme.h6Style
                                        .copyWith(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(
                                "Distance",
                                style: AppTheme.h6Style
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    "https://image.flaticon.com/icons/png/128/578/578116.png",
                                    height: 20,
                                  ),
                                  Text(
                                    " 5 days",
                                    style: AppTheme.h6Style
                                        .copyWith(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(
                                "Weather",
                                style: AppTheme.h6Style
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 10, right: 20),
                              height: 57,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: LightColor.backgroundColor)),
                              child: Center(
                                child: Text(
                                  "N${EventTripListData.hotelList[0].amount.floor()}",
                                  style: AppTheme.h5Style.copyWith(
                                      color: LightColor.backgroundColor),
                                ),
                              )),
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: LightColor.backgroundColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(
                                    "Book Now",
                                    style: AppTheme.h5Style
                                        .copyWith(color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildSliverHead() {
    final double expandedHeights = 400;
    final double roundedContainerHeight = 50;
    return SliverPersistentHeader(
        delegate: DetailsSliverDelage(
            expandedHeights, roundedContainerHeight, backArrowTapped, indexs));
  }
}

class DetailsSliverDelage extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;
  final Function backArrowTapped;
  int indexs;

  DetailsSliverDelage(this.expandedHeight, this.roundedContainerHeight,
      this.backArrowTapped, this.indexs);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: Stack(
          children: <Widget>[
            new Swiper(
              onIndexChanged: backArrowTapped,
              itemBuilder: (BuildContext context, index) {
                return Hero(
                  tag: EventTripListData.hotelList[0].images[0],
                  child: new Image.network(
                    EventTripListData.hotelList[0].images[index],
                    fit: BoxFit.fill,
                  ),
                );
              },
              itemCount: EventTripListData.hotelList[0].images.length,

              //viewportFraction: 0.8,
              //scale: 0.9,
            ),
            Positioned(
              top: 10,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i <= EventTripListData.hotelList[0].images.length - 1;
                      i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Container(
                        height: 10,
                        width: 10,
                        color: (i == indexs)
                            ? Colors.white
                            : LightColor.backgroundColor,
                        //decoration:
                      ),
                    ),
                ],
              ),
            ),
            Positioned(
              top: expandedHeight - roundedContainerHeight - shrinkOffset,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: roundedContainerHeight,
                decoration: BoxDecoration(
                  color: LightColor.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
            Positioned(
              top: expandedHeight - 120 - shrinkOffset,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    EventTripListData.hotelList[0].titleTxt,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(EventTripListData.hotelList[0].location,
                      style: AppTheme.h6Style
                          .copyWith(color: Colors.white, fontSize: 15)),
                ],
              ),
            )
          ],
        ));
  }

  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
