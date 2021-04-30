import 'package:flex/constrint.dart';
import 'package:flex/screens/personal_data/components/date_birth.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Make new Payment",
              style: AppTheme.h1Style,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Amount",
              style: AppTheme.h6Style,
            ),
            SizedBox(
              height: 5,
            ),
            DateBirthBar(
              topPadding: 10,
              text: "Enter the amount here",
            ),
            Text(
              "Bank",
              style: AppTheme.h6Style,
            ),
            SizedBox(
              height: 5,
            ),
            DateBirthBar(
              topPadding: 10,
              text: "Enter your bank name here",
            ),
            Text(
              "Account Name",
              style: AppTheme.h6Style,
            ),
            SizedBox(
              height: 5,
            ),
            DateBirthBar(
              topPadding: 10,
              text: "Enter account name here",
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Reference",
              style: AppTheme.h6Style,
            ),
            DateBirthBar(
              topPadding: 10,
              text: "Payment Reference",
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Savings Target",
              style: AppTheme.h6Style,
            ),
            DateBirthBar(
              topPadding: 10,
              text: "Enter you savings target here",
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: LightColor.backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text(
                    "Next",
                    style: AppTheme.h5Style.copyWith(color: Colors.white),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
