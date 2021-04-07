import 'package:flutter/material.dart';

import '../../../constrint.dart';
import '../components/icon_bar.dart';

class BarElements extends StatelessWidget {
  const BarElements({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding * 1.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: kDefaultPadding * 3,
          ),
          Container(
            child: Text(
              "What are you waiting for? Pick a plan!",
              style:
                  AppTheme.h2Style.copyWith(fontSize: 18, color: Colors.white),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 3,
          ),
          IconBar(
            text1: "Create a Flex Plan",
            text2:
                "Don’t wait till later, create a plan to enjoy life \nresponsibly. You’ve earned it!",
            iconAssets: "assets/images/flex_image.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            text1: "Create a Stash Plan",
            text2:
                "No time to check for time. Create a Stash Plan \n and top up. You worth it!",
            iconAssets: "assets/images/stash.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            text1: "Find Fun Event",
            text2:
                "Step away for a minute or more from the \nhustle and bustle.",
            iconAssets: "assets/images/event.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            text1: "Join Flex Trips",
            text2:
                "You deserve time away from stress and enjoy \nbeautiful sights and landscape.",
            iconAssets: "assets/images/tour.png",
          ),
        ],
      ),
    );
  }
}
