import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/view/blogs/blogs.dart';
import 'package:flutter_application_1/ui/view/home/home.dart';
import 'package:flutter_application_1/ui/view/notifications/notifications.dart';
import 'package:flutter_application_1/ui/view/profile/profile.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> routes = {
      0: Home(),
      1: const Blogs(),
      3: NotificationsPage(),
      4: ProfileScreen()
    };

    return Scaffold(
      body: routes[_selectedTab],
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: colorBackground),
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => _changeTab(index),
          selectedItemColor: colorIconActive,
          unselectedItemColor: colorIconDefault,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "trang chủ"),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: "bản tin"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Yêu thích"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Thông báo"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Cài đặt"),
          ],
        ),
      ),
    );
  }
}
