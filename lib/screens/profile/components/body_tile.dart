import 'package:flutter/material.dart';

import 'list_tile_bar.dart';

class BodyTile extends StatelessWidget {
  const BodyTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTileBar(
          text: "Personal Data",
          icons: Icons.verified_user,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "Settings",
          icons: Icons.settings,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "E-Statement",
          icons: Icons.pages,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "Referral Code",
          icons: Icons.favorite_outline,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          height: 3,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "FAQs",
          icons: Icons.format_quote,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "Our Handbook",
          icons: Icons.handyman,
          onpressed: () {},
        ),
        SizedBox(
          height: 10,
        ),
        ListTileBar(
          text: "Reachout",
          icons: Icons.web_asset_outlined,
          onpressed: () {},
        )
      ],
    );
  }
}
