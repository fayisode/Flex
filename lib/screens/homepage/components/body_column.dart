import 'package:flex/screens/homepage/components/profile_picture.dart';
import 'package:flex/screens/homepage/components/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constrint.dart';

class BodyColumn extends StatelessWidget {
  const BodyColumn({
    Key key,
  }) : super(key: key);

  @override
  final _url = 'https://flexweb.netlify.app/';
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ProfilePicture(
          radius: kDefaultWidthPadding * 10,
        ),
        SizedBox(
          height: 4.0.h,
        ),
        Center(
          child: Text(
            "Welcome",
            style: AppTheme.h2Style.copyWith(fontSize: 23.0.sp),
          ),
        ),
        SizedBox(
          height: 3.2.h,
        ),
        Text(
          "\"A budget is telling your money where to go, instead of wondering where it went\". . .  John Maxwell",
          textAlign: TextAlign.center,
          style: AppTheme.h6Style.copyWith(height: 1.5, color: Colors.grey),
        ),
        SizedBox(
          height: 4.0.h,
        ),
        TextButtonClass(
          ontap: () {},
          texts: "Get Started With Flex",
        ),
        SizedBox(
          height: 3.2.h,
        ),
        TextButtonClass(
          ontap: _launchURL,
          texts: "Learn More About Flex",
        ),
      ],
    );
  }
}
