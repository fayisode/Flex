import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constrint.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.4.h,
      //width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 3),
          color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: kDefaultWidthPadding * 1.5,
                            bottom: kDefaultPadding,
                            top: kDefaultPadding,
                            right: kDefaultWidthPadding * 3.7),
                        hintText: "Search Your trip here"),
                  ))),
          CircleAvatar(
            backgroundColor: LightColor.backgroundColor,
            radius: kDefaultPadding * 2,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
