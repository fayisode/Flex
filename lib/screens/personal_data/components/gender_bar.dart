import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GenderBar extends StatelessWidget {
  const GenderBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: Container(
            margin:
                EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
            height: 7.0.h,
            width: 45.0.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kDefaultPadding)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 3.0.w,
                    width: 3.0.w,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(kDefaultWidthPadding * 2.5),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Container(
                        height: 2.0.w,
                        width: 2.0.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          color: LightColor.backgroundColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultWidthPadding * 1.8,
                  ),
                  Text(
                    "Male",
                    style: AppTheme.h6Style,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 7.0.h,
            width: 45.0.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kDefaultPadding)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 3.0.w,
                    width: 3.0.w,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(kDefaultWidthPadding * 2.5),
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Container(
                        height: 2.0.w,
                        width: 2.0.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kDefaultPadding),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultWidthPadding * 1.8,
                  ),
                  Text(
                    "Female",
                    style: AppTheme.h6Style,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
