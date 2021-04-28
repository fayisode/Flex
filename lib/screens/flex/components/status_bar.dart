import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constrint.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Next Saving Date:",
                  style: AppTheme.h6Style,
                ),
                Text(DateFormat.yMMMMEEEEd().format(DateTime.now())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start Date:", style: AppTheme.h6Style),
                Text(DateFormat.yMMMMEEEEd().format(DateTime.now())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Maturity Date:", style: AppTheme.h6Style),
                Text(DateFormat.yMMMMEEEEd().format(DateTime.now())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Amount:", style: AppTheme.h6Style),
                Text("10000 Naira/ month"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Saving Period:", style: AppTheme.h6Style),
                Text("12 Months"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
