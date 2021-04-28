import 'package:flex/constrint.dart';
import 'package:flex/models/transaction_list.dart';
import 'package:flex/screens/flex/components/sliver_box.dart';
import 'package:flex/screens/stash/components/transact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'logo_name.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          title: LogoName(),
        ),
        buildSliverToBoxAdapter(),
        TransactList()
      ],
    ));
  }
}
