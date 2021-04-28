import 'package:flex/screens/personal_data/components/date_birth.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TopUp extends StatelessWidget {
  const TopUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Make new payment",
            style: AppTheme.h5Style,
          ),
          DateBirthBar(
            topPadding: 10,
            text: "Amount",
          ),
          DateBirthBar(
            topPadding: 10,
            text: "Registration",
          ),
          DateBirthBar(
            topPadding: 10,
            text: "Amount",
          ),
          DateBirthBar(
            topPadding: 10,
            text: "Amount",
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: LightColor.backgroundColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Container(
                  height: 30,
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
