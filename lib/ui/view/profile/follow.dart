import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/ui/widget/profile/follower.dart';
import 'package:flutter_application_1/ui/widget/profile/following.dart';

class FollowTabScreen extends StatelessWidget {
  final ProfileData profileInfo;
  final int tabFollow;

  const FollowTabScreen({super.key, required this.tabFollow,required this.profileInfo});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: tabFollow,
      child: Scaffold(
        appBar: AppBar(
          title: Text(profileInfo.user.fullName ?? '__thanhcuong__',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Người Theo Dõi'),
              Tab(text: 'Đang Theo Dõi'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FollowerScreen(profileInfo: profileInfo),
            FollowingScreen(profileInfo: profileInfo),
          ],
        ),
      ),
    );
  }
}
