import 'package:flutter/material.dart';

import '../../../constrint.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Text(
        "Transactions",
        style: AppTheme.h2Style,
      ),
    );
  }
}
