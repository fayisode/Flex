import 'package:flutter/material.dart';

class LineBreaker extends StatelessWidget {
  const LineBreaker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      child: Container(
        margin: EdgeInsets.only(bottom: 10, right: 10, left: 20, top: 10),
        height: 1,
        width: 300,
        //width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
