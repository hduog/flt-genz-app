import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/ui/view/detailPost/detailPost.dart';
import 'package:flutter_application_1/ui/view/detailPostShare/detailPostShare.dart';
import 'package:flutter_application_1/ui/view/profile/edit_profile_screen.dart';
import 'package:flutter_application_1/ui/view/profile/follow.dart';
import 'package:flutter_application_1/ui/widget/profile/followButton.dart';
import 'package:flutter_application_1/ui/widget/profile/infor_profile.dart';
import 'package:flutter_application_1/ui/widget/profile/tag_profile.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profileother.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileOtherScreen extends ConsumerStatefulWidget {
  final String accountId;
  const ProfileOtherScreen({required this.accountId, super.key});
  ConsumerState<ProfileOtherScreen> createState() => _ProfileOtherScreenState();
}

class _ProfileOtherScreenState extends ConsumerState<ProfileOtherScreen> {
  @override
  void initState() {
    super.initState();
    fetchProfileOther(widget.accountId);
    fetchPostProfileOther(widget.accountId);
    fetchPostShareProfileOther(widget.accountId);
  }

  Future<void> fetchProfileOther(String accountId) async {
    final profileService = ProfileService();
    final profileOther =
        await profileService.getProfileOtherAccount(ref, accountId);
    if (profileOther != null) {
      ref.read(profileOtherProvider.notifier).setOtherProfile(profileOther);
    }
  }

  Future<void> fetchPostProfileOther(String accountId) async {
    final postService = PostService();
    final posts = await postService.getPostOtherAccounts(ref, accountId);
    if (posts != null) {
      ref.read(postProvider.notifier).setPosts(posts);
    }
  }

  Future<void> fetchPostShareProfileOther(String accountId) async {
    final postService = PostService();
    final postShare =
        await postService.getPostShareOtherAccounts(ref, accountId);
    if (postShare != null) {
      ref.read(postProvider.notifier).setPostShare(postShare);
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileInfo = ref.watch(profileOtherProvider);
    final posts = ref.watch(postProvider).posts;
    final postShares = ref.watch(postProvider).postShares;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          profileInfo?.profileOtherAccount.user.fullName ?? "",
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
                              '${Constants.awsUrl}${profileInfo?.profileOtherAccount.user.banner ?? ""}',
                              fit: BoxFit.cover,
                              width: bannerWidth,
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: 150,
                        left:
                            (MediaQuery.of(context).size.width - 100) / 2 - 20,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              '${Constants.awsUrl}${profileInfo?.profileOtherAccount.user.avata ?? ''}'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    profileInfo?.profileOtherAccount.user.fullName ?? "",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      profileInfo?.profileOtherAccount.user.nickName ?? "",
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
                                  tabFollow: 0,
                                  profileInfo:
                                      profileInfo!.profileOtherAccount),
                            ),
                          );
                        },
                        child: Text(
                            '${profileInfo?.profileOtherAccount.objectCount.followers} Followers'),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FollowTabScreen(
                                  tabFollow: 1,
                                  profileInfo:
                                      profileInfo!.profileOtherAccount),
                            ),
                          );
                        },
                        child: Text(
                            '${profileInfo?.profileOtherAccount.objectCount.followings} Followings'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TagProfile(),
                  const SizedBox(height: 10),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => EditProfileScreen()),
                  //         );
                  //       },
                  //       child: const Text(
                  //         "Chỉnh sửa hồ sơ",
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //       style: ElevatedButton.styleFrom(
                  //         backgroundColor: colorButton,
                  //         side: const BorderSide(color: Colors.grey),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(10),
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 10),
                  //     InkWell(
                  //       onTap: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => InforProfileScreen(
                  //                     profile: profileInfo.profileOtherAccount,
                  //                   )),
                  //         );
                  //       },
                  //       child: SvgPicture.asset(
                  //         'assets/icons/dots-vertical.svg',
                  //         width: 24,
                  //         height: 24,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  FollowButton(),
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
                    Tab(text: "Bài đăng"),
                    Tab(text: "Bài chia sẻ"),
                    Tab(text: "Ảnh"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // Tab "Bài đăng"
                      ListView.builder(
                        itemCount: posts.length,
                        itemBuilder: (context, index) {
                          final post = posts[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostDetailPage(postItem: post),
                                ),
                              );
                            },
                            child: ReelCard(postItem: post, is_share: false),
                          );
                        },
                      ),
                      // Tab "Bài chia sẻ"
                      ListView.builder(
                        itemCount: postShares.length,
                        itemBuilder: (context, index) {
                          final postShare = postShares[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PostShareDetailPage(postItem: postShare),
                                ),
                              );
                            },
                            child:
                                ReelCard(postItem: postShare, is_share: true),
                          );
                        },
                      ),
                      // Tab "Ảnh"
                      GridView.builder(
                        padding: const EdgeInsets.all(8.0),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                        ),
                        itemCount:
                            profileInfo?.profileOtherAccount.image?.length ??
                                0, 
                        itemBuilder: (context, index) {
                          final photo =
                              profileInfo?.profileOtherAccount.image?[index];
                          if (photo?.path == null || photo!.path.isEmpty) {
                            return const SizedBox
                                .shrink(); 
                          }
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
