import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'icon_bar_element.dart';

class Iconbar extends StatelessWidget {
  const Iconbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconBarElement(
            imageLink:
                "https://t4.ftcdn.net/jpg/00/79/95/93/240_F_79959389_zJWR36jJBbAIPFEl5GZzohqQDLQDbSbR.jpg",
            title: " 5 days",
            subtxt: "Duration",
          ),
          IconBarElement(
            imageLink:
                "https://t4.ftcdn.net/jpg/02/45/06/85/240_F_245068502_4edjDYUjTNHbs1AZhMbDH0Zs8yzAJcxE.jpg",
            title: " 5 days",
            subtxt: "Weather",
          ),
          IconBarElement(
            imageLink:
                "https://image.flaticon.com/icons/png/128/578/578116.png",
            title: " 5 days",
            subtxt: "Duration",
          ),
        ],
      ),
    );
  }
}
