import 'package:flex/constrint.dart';
import 'package:flex/screens/profile/components/help_container.dart';
import 'package:flex/screens/profile/components/profile_top_bar.dart';
import 'package:flutter/material.dart';

import 'body_tile.dart';

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
            children: <Widget>[
              ProfileTopBar(),
              Divider(
                color: Colors.grey,
              ),
              BodyTile(),
              HelpContainer()
            ],
          ),
        ),
      ),
    );
  }
}
