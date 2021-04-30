import 'package:flex/screens/button-navigation/button-naviagtion.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';
import '../components/icon_bar.dart';

class BarElements extends StatelessWidget {
  const BarElements({
    Key key,
  }) : super(key: key);
  void selectCategory(BuildContext context, int index) {
    Navigator.of(context).pushNamed(
      ButtonNaviagtion.routeName,
      arguments: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding * 1.2),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                right: kDefaultWidthPadding * 4, top: kDefaultPadding * 1.5),
            child: Text(
              "There's flex for everyone . . .",
              style: AppTheme.h2Style
                  .copyWith(fontSize: 23.0.sp, color: Colors.white),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 8,
          ),
          Container(
            child: Text(
              "What are you waiting for? Pick a plan!",
              style: AppTheme.h5Style.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            onpressed: () => selectCategory(context, 3),
            text1: "Create a Flex Plan",
            text2:
                "Don’t wait till later, create a plan to enjoy life responsibly. You’ve earned it!",
            iconAssets: "assets/images/flex_image.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            onpressed: () => selectCategory(context, 1),
            text1: "Create a Stash Plan",
            text2:
                "No time to check for time. Create a Stash Plan and top up. You worth it!",
            iconAssets: "assets/images/stash.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            onpressed: () => selectCategory(context, 4),
            text1: "Find Fun Event",
            text2: "Step away for a minute or more from the hustle and bustle.",
            iconAssets: "assets/images/event.png",
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          IconBar(
            onpressed: () => selectCategory(context, 2),
            text1: "Join Flex Trips",
            text2:
                "You deserve time away from stress and enjoy beautiful sights and landscape.",
            iconAssets: "assets/images/tour.png",
          ),
        ],
      ),
    );
  }
}
