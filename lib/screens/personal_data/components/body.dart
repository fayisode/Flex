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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ImageBar(),
            Text("Your Name"),
            NameBar(),
            Text("Date Of Birth"),
            DateBirthBar(),
            Text("Your Job"),
            DateBirthBar(),
            Text("Monthly Income"),
            DateBirthBar(),
            Text("Gender"),
            GenderBar()
          ],
        ),
      ),
    ));
  }
}
