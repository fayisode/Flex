import 'package:flutter/material.dart';

import '../../../constrint.dart';

class IconBarElement extends StatelessWidget {
  const IconBarElement({
    Key key,
    @required this.imageLink,
    @required this.title,
    @required this.subtxt,
  }) : super(key: key);
  final String imageLink;
  final String title;
  final String subtxt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.network(
              imageLink,
              height: 20,
            ),
            Text(
              title,
              style: AppTheme.h6Style.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Text(
          subtxt,
          style: AppTheme.h6Style.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
