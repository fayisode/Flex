import 'package:flutter/material.dart';

import '../../../constrint.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double rounded_container_height;
  final String Urls;
  final String name;
  DetailSliverDelegate(
      this.expandedHeight, this.Urls, this.rounded_container_height, this.name);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Hero(
          tag: Urls,
          child: Image.network(
            Urls,
            height: expandedHeight,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: expandedHeight - rounded_container_height + 2 - shrinkOffset,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: rounded_container_height,
              decoration: BoxDecoration(
                color: LightColor.scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            )),
        // Positioned(
        //     top: expandedHeight - rounded_container_height - 90,
        //     left: 0,
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Row(
        //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //               width: 310,
        //               height: 50,
        //               decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(20),
        //               )),
        //           SizedBox(
        //             width: 18,
        //           ),
        //           CircleAvatar(
        //             radius: 25,
        //             backgroundColor: LightColor.backgroundColor,
        //             child: IconButton(
        //                 icon: Icon(
        //                   Icons.search,
        //                   color: Colors.white,
        //                 ),
        //                 onPressed: () {}),
        //           )
        //         ],
        //       ),
        //     )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              Container(
                height: 40,
                width: 40,
                child: Image.asset("assets/images/flex.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: expandedHeight - rounded_container_height - 100,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: AppTheme.h2Style.copyWith(
                        color: Colors.white, fontSize: 14, letterSpacing: 5),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Flex " + name,
                    style: AppTheme.h2Style
                        .copyWith(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
