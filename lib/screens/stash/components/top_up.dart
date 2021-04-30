import 'package:flex/screens/personal_data/components/date_birth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class TopUp extends StatelessWidget {
  const TopUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: kDefaultWidthPadding * 5,
          right: kDefaultPadding,
          top: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Make new payment",
            style: AppTheme.h5Style,
          ),
          DateBirthBar(
            topPadding: kDefaultPadding,
            text: "Amount",
          ),
          DateBirthBar(
            topPadding: kDefaultPadding,
            text: "Registration",
          ),
          DateBirthBar(
            topPadding: kDefaultPadding,
            text: "Amount",
          ),
          DateBirthBar(
            topPadding: kDefaultPadding,
            text: "Amount",
          ),
          Padding(
            padding: EdgeInsets.only(bottom: kDefaultPadding),
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: LightColor.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kDefaultPadding * 2))),
                child: Container(
                  height: 4.0.h,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Top Up",
                      style: AppTheme.h6Style.copyWith(color: Colors.white),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
