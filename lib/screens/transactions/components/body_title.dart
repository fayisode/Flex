import 'package:flutter/material.dart';

import '../../../constrint.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          "Transactions",
          style: AppTheme.h1Style,
        ),
      ),
    );
  }
}
