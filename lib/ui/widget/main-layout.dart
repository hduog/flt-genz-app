import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/view/blogs/blogs.dart';
import 'package:flutter_application_1/ui/view/createPost/createPost.dart';
import 'package:flutter_application_1/ui/view/home/home.dart';
import 'package:flutter_application_1/ui/view/menu/menu.dart';
import 'package:flutter_application_1/ui/view/notifications/notifications.dart';
import 'package:flutter_application_1/ui/widget/profile/account_avata.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final Map<int, Widget> routes = {
      0: Home(),
      1: const Blogs(),
      2: CreatePost(),
      3: NotificationsPage(),
      4: MenuPage(),
    };
    final account = ref.watch(userProvider);

    return Scaffold(
      body: routes[_selectedTab],
      bottomNavigationBar: Stack(clipBehavior: Clip.none, children: [
        Container(
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedTab,
            onTap: (index) => _changeTab(index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 62, 104, 218),
            unselectedItemColor: Colors.black54,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 205, 215, 241),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/icons/upload.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: account!.id.isNotEmpty
                    ? UserAvatar(account: account)
                    : const Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
