import 'package:flex/models/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constrint.dart';

class TransactList extends StatelessWidget {
  const TransactList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.only(bottom: 5, right: 20, left: 20, top: 10),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [kDefaultCardShadow],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: Icon(
              Icons.pages_rounded,
              color: LightColor.backgroundColor,
            ),
          ),
          title: Text(Transactions.transList[index].title,
              style: AppTheme.h5Style),
          subtitle: Text(DateFormat.yMEd().format(DateTime.now()),
              style: AppTheme.h6Style.copyWith(color: Colors.grey)),
          trailing: Text('N${Transactions.transList[index].amount}',
              style: AppTheme.h5Style),
        ),
      );
    }, childCount: 5));
  }
}
