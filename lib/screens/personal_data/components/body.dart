import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';
import 'date_birth.dart';
import 'gender_bar.dart';
import 'image_bar.dart';
import 'name_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(kDefaultPadding * 1.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: kDefaultPadding * 2,
                  ),
                ),
                SizedBox(
                  width: kDefaultWidthPadding * 4,
                ),
                Text(
                  "Personal Data",
                  style: AppTheme.h2Style,
                )
              ],
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            ImageBar(),
            Text(
              "Your Name",
              style: AppTheme.h6Style,
            ),
            NameBar(),
            Text(
              "Date Of Birth",
              style: AppTheme.h6Style,
            ),
            DateBirthBar(
              text: "Enter your date of birth",
              topPadding: kDefaultPadding * 1.5,
            ),
            Text(
              "Your Job",
              style: AppTheme.h6Style,
            ),
            DateBirthBar(
              text: "Enter your profession",
              topPadding: kDefaultPadding * 1.5,
            ),
            Text(
              "Monthly Income",
              style: AppTheme.h6Style,
            ),
            DateBirthBar(
              text: "Enter your monthly income",
              topPadding: kDefaultPadding * 1.5,
            ),
            Text(
              "Gender",
              style: AppTheme.h6Style,
            ),
            GenderBar()
          ],
        ),
      ),
    ));
  }
}
