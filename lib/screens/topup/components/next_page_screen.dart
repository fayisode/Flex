import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColor.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BarBox(
                title: "Yearly",
                price: "100000",
                subtitle: "Pay for a full year",
                pricetitle: " /year",
              ),
              BarBox(
                title: "Monthly",
                price: "100000",
                subtitle: "Pay for monthly",
                pricetitle: " /month",
              ),
              BarBox(
                title: "Week",
                price: "100000",
                subtitle: "Make payment weekly",
                pricetitle: " /week",
              ),
              BarBox(
                title: "Daily",
                price: "100000",
                subtitle: "Pay everyday",
                pricetitle: " /day",
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: LightColor.backgroundColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: Text(
                      "Add Card",
                      style: AppTheme.h5Style.copyWith(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BarBox extends StatelessWidget {
  const BarBox({
    @required this.title,
    @required this.subtitle,
    @required this.price,
    @required this.pricetitle,
    Key key,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String price;
  final String pricetitle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: LightColor.backgroundColor),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade100,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: AppTheme.h5Style,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subtitle,
                    style: AppTheme.h6Style
                        .copyWith(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    price,
                    style: AppTheme.h5Style,
                  ),
                  Text(
                    pricetitle,
                    style: AppTheme.h6Style
                        .copyWith(color: Colors.grey, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
