import 'package:flex/constrint.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatefulWidget {
  static final routeName = "/settings-screen";
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String _selectedLocation = "";
  String _selectedLanguage = "";
  String _selectedCurrency = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          TopBar(),
          buildListTile(),
          ListTile(
            title: Text(
              "Currency",
              style: AppTheme.h6Style,
            ),
            subtitle: Text(
              "N",
              style: AppTheme.h6Style,
            ),
            trailing: DropdownButton(
              hint: _selectedCurrency == ""
                  ? Text(
                      "Choose a Currency",
                      style: AppTheme.h6Style,
                    )
                  : Text(
                      _selectedCurrency,
                      style: AppTheme.h6Style,
                    ),
              items: <String>['Naira', 'Rands', 'Dollars', 'Pounds']
                  .map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: AppTheme.h6Style,
                  ),
                );
              }).toList(),
              onChanged: (newValues) {
                setState(() {
                  _selectedCurrency = newValues;
                  print(_selectedLocation);
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              "Language",
              style: AppTheme.h6Style,
            ),
            subtitle: Text(
              "En",
              style: AppTheme.h6Style,
            ),
            trailing: DropdownButton(
              hint: _selectedLanguage == ""
                  ? Text(
                      "Choose a Language",
                      style: AppTheme.h6Style,
                    )
                  : Text(
                      _selectedLanguage,
                      style: AppTheme.h6Style,
                    ),
              items: <String>['English', 'French', 'Yoruba', 'Latin']
                  .map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: AppTheme.h6Style,
                  ),
                );
              }).toList(),
              onChanged: (newValues) {
                setState(() {
                  _selectedLanguage = newValues;
                  print(_selectedLanguage);
                });
              },
            ),
          ),
          TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text(
                      "Alert Box",
                      style: AppTheme.h6Style,
                    ),
                    content: Text(
                      "Are you sure you want to delete this account?",
                      style: AppTheme.h6Style,
                    ),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "Yes",
                          style: AppTheme.h6Style,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Text(
                          "No",
                          style: AppTheme.h6Style,
                        ),
                      ),
                    ],
                  ),
                );
              },
              style: TextButton.styleFrom(
                  backgroundColor: LightColor.backgroundColor),
              child: Text(
                "Delete Account",
                style: AppTheme.h5Style.copyWith(color: Colors.white),
              ))
        ],
      ),
    ));
  }

  ListTile buildListTile() {
    return ListTile(
      title: Text(
        "Country",
        style: AppTheme.h6Style,
      ),
      subtitle: Text(
        "Nig",
        style: AppTheme.h6Style,
      ),
      trailing: DropdownButton(
        hint: _selectedLocation == ""
            ? Text(
                "Choose a location",
                style: AppTheme.h6Style,
              )
            : Text(
                _selectedLocation,
                style: AppTheme.h6Style,
              ),
        items: <String>['Nigeria', 'London', 'Congo', 'America']
            .map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(
              value,
              style: AppTheme.h6Style,
            ),
          );
        }).toList(),
        onChanged: (newValues) {
          setState(() {
            _selectedLocation = newValues;
            print(_selectedLocation);
          });
        },
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 5.0.w,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        SizedBox(
          width: kDefaultWidthPadding * 9,
        ),
        Text(
          "Settings",
          style: AppTheme.h2Style,
        )
      ]),
    );
  }
}
