import '../components/flux-logo.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';
import 'body_column.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding * 1.2),
          child: Stack(
            children: [
              FluxLogo(),
              BodyColumn(),
            ],
          ),
        ),
      ),
    ));
  }
}
