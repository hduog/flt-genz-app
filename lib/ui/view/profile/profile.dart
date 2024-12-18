import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/ui/view/profile/edit_profile_screen.dart';
import 'package:flutter_application_1/ui/view/profile/follow.dart';
import 'package:flutter_application_1/ui/widget/profile/infor_profile.dart';
import 'package:flutter_application_1/ui/widget/profile/tag_profile.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    fetchProfile();
    fetchPostProfile();
  }

  Future<void> fetchProfile() async {
    final profileService = ProfileService();
    final profile = await profileService.getMyProfile();
    if (profile != null) {
      ref.read(profileProvider.notifier).setMyProfile(profile);
    }
  }

  Future<void> fetchPostProfile() async {
    final postService = PostService();
    final posts = await postService.getMyPosts(ref);
    if (posts != null) {
      ref.read(postProvider.notifier).setPosts(posts);
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileInfo = ref.watch(profileProvider);
    final postData = ref.watch(postProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          profileInfo?.user.fullName ?? "",
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final screenWidth = constraints.maxWidth;
                          final bannerWidth = screenWidth * 0.9;
                          return Container(
                            height: 200,
                            color: Colors.blueAccent.withOpacity(0.8),
                            child: Image.network(
                              '${Constants.awsUrl}${profileInfo!.user.banner ?? ""}',
                              fit: BoxFit.cover,
                              width: bannerWidth,
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: 150, // Đảm bảo khoảng cách từ trên xuống hợp lý
                        left:
                            (MediaQuery.of(context).size.width - 100) / 2 - 20,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              '${Constants.awsUrl}${profileInfo!.user.avata ?? ''}'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    profileInfo.user.fullName ?? "",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      profileInfo.user.nickName ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FollowTabScreen(
                                  tabFollow: 0, profileInfo: profileInfo),
                            ),
                          );
                        },
                        child: Text(
                            '${profileInfo.objectCount.followers} Followers'),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FollowTabScreen(
                                  tabFollow: 1, profileInfo: profileInfo),
                            ),
                          );
                        },
                        child: Text(
                            '${profileInfo.objectCount.followings} Followings'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TagProfile(),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfileScreen()),
                          );
                        },
                        child: const Text(
                          "Chỉnh sửa hồ sơ",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorButton,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InforProfileScreen(
                                      profile: profileInfo,
                                    )),
                          );
                        },
                        child: SvgPicture.asset(
                          'assets/icons/dots-vertical.svg',
                          width: 24,
                          height: 24,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blueAccent,
                  tabs: const [
                    Tab(text: "All"),
                    Tab(text: "Photos"),
                    Tab(text: "Videos"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: postData.length,
                        itemBuilder: (context, index) {
                          final post = postData[index];
                          // check sau
                          return ReelCard(postItem: post, is_share: true);
                        },
                      ),
                      GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        ),
                        itemCount: profileInfo!.image!.length,
                        itemBuilder: (context, index) {
                          final photo = profileInfo.image![index];
                          return Image.network(
                            '${Constants.awsUrl}${photo.path}',
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        ),
                        itemCount: profileInfo.image!.length,
                        itemBuilder: (context, index) {
                          final photo = profileInfo.image![index];
                          return Image.network(
                            '${Constants.awsUrl}${photo.path}',
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
