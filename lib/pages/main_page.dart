import 'package:dessert_time/pages/category_page.dart';
import 'package:dessert_time/pages/discovery.dart';
import 'package:dessert_time/pages/profile_page.dart';
import 'package:dessert_time/pages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dessert_time/resource/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DiscoveryPage(),
    SearchPage(),
    CategoryPage(),
    ProfilePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.discoveryBkColor,
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.bottomNavBkColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.black12,
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          onTap: onTabTapped,
          selectedIconTheme:
              IconThemeData(color: AppColor.bottomNavSelectedIcon),
          unselectedIconTheme:
              IconThemeData(color: AppColor.bottomNavUnSelectedIcon),
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text(
                '',
              ),
              icon: Icon(
                CupertinoIcons.home,
              ),
            ),
            BottomNavigationBarItem(
              title: SizedBox.shrink(),
              icon: Icon(
                CupertinoIcons.search,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'asdasd',
              style: TextStyle(color: Colors.black),),
              icon: Icon(
                CupertinoIcons.collections,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                '',
              ),
              icon: Icon(
                CupertinoIcons.profile_circled,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
