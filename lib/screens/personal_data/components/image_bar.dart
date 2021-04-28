import 'package:flutter/material.dart';

import '../../../constrint.dart';

class ImageBar extends StatelessWidget {
  const ImageBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120,
        width: 120,
        child: Stack(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/people.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                right: 7,
                child: InkWell(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.camera,
                      color: LightColor.backgroundColor,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
