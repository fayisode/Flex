import 'package:flex/constrint.dart';
import 'package:flex/models/transaction_list.dart';
import 'package:flutter/material.dart';

import 'body_title.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: <Widget>[
        BodyTitle(),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [kDefaultCardShadow],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  child: Icon(
                    Icons.pages_rounded,
                    color: LightColor.backgroundColor,
                  ),
                ),
                title: Text(Transactions.transList[index].type,
                    style: AppTheme.h5Style),
                subtitle: Text(Transactions.transList[index].title,
                    style: AppTheme.h6Style.copyWith(color: Colors.grey)),
                trailing: Text('N${Transactions.transList[index].amount}',
                    style: AppTheme.h5Style),
              ),
            ),
          );
        }, childCount: Transactions.transList.length))
      ],
    ));
  }
}
