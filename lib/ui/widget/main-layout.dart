import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/view/blogs/blogs.dart';
import 'package:flutter_application_1/ui/view/home/home.dart';
import 'package:flutter_application_1/ui/view/notifications/notifications.dart';
import 'package:flutter_application_1/ui/view/profile/profile.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainLayout extends ConsumerStatefulWidget {
  @override
  ConsumerState<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends ConsumerState<MainLayout> {
  int _selectedTab = 0;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userInfo = ref.watch(userProvider.notifier).getData();
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
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "trang chủ"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.newspaper), label: "Bản tin"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Yêu thích"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Thông báo"),
            BottomNavigationBarItem(
                icon: userInfo?.avata != null
                    ? Image.network(Constants.awsUrl + (userInfo?.avata ?? ''))
                    : const SizedBox(
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/reels-test.png'),
                        ),
                      ),
                label: userInfo?.fullName.split(' ')[0] ?? 'Thông tin'),
          ],
        ),
      ),
    );
  }
}
