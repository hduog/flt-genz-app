import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';

class BottomBar extends StatefulWidget {
  final Map<int, Widget> routes;
  const BottomBar({Key? key, required this.routes}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.routes[_selectedTab],
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
