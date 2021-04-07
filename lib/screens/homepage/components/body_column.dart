import 'package:flex/screens/homepage/components/profile_picture.dart';
import 'package:flex/screens/homepage/components/textbutton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class BodyColumn extends StatelessWidget {
  const BodyColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ProfilePicture(),
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
          texts: "Get Started With Flex",
        ),
        SizedBox(
          height: 3.2.h,
        ),
        TextButtonClass(
          texts: "Learn More About Flex",
        ),
      ],
    );
  }
}
