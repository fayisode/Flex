import 'components/icon_data.dart';
import 'components/to_page_transformation.dart';
import 'package:flutter/material.dart';
import 'components/curved_navigation.dart';
import 'components/from_page_transformation.dart';

class ButtonNaviagtion extends StatefulWidget {
  static const routeName = "/button-navigation";
  @override
  _ButtonNaviagtionState createState() => _ButtonNaviagtionState();
}

class _ButtonNaviagtionState extends State<ButtonNaviagtion> {
  PageController _controller;
  int initialPage;
  var currentPageValue = 0.0;
  int _selectedPageIndex = 2;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 2);
    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
      _controller.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                _selectPage(index);
              },
              itemCount: IconDatas.pages.length,
              itemBuilder: (context, position) {
                final page = Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.1),
                  child: IconDatas.pages[position],
                );

                // From page
                if (position == currentPageValue.floor()) {
                  return FromPageTransformation(
                      position: position,
                      currentPageValue: currentPageValue,
                      page: page);
                }
                // To page
                else if (position == currentPageValue.floor() + 1) {
                  return ToPageTransform(
                      position: position,
                      currentPageValue: currentPageValue,
                      page: page);
                }
                // Other page (not in current view)
                else {
                  return page;
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          buildCurvedNavigationBar(bottomTapped, _selectedPageIndex),
    );
  }
}
