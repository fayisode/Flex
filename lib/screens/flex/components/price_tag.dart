import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constrint.dart';

class PriceTags extends StatelessWidget {
  const PriceTags({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 55,
      top: 70,
      child: SizedBox(
        width: 70,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                //width: 70,
                height: 25,
                child: AutoSizeText(
                  "1000000",
                  textAlign: TextAlign.center,
                  style: AppTheme.h2Style.copyWith(fontSize: 20),
                ),
              ),
              Text(
                "Naira Left",
                textAlign: TextAlign.center,
                style:
                    AppTheme.h6Style.copyWith(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
