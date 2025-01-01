import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/features/feature_service.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/ui/view/info/ImageListPage.dart';
import 'package:flutter_application_1/ui/view/info/PostListPage.dart';
import 'package:flutter_application_1/ui/view/info/PostShareListPage.dart';
import 'package:flutter_application_1/ui/view/profile/edit_profile_screen.dart';
import 'package:flutter_application_1/ui/widget/feature.card.dart';
import 'package:flutter_application_1/view-models/feature/feature.prvd.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuPage extends ConsumerStatefulWidget {
  const MenuPage({super.key});

  @override
  ConsumerState<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends ConsumerState<MenuPage> {
  @override
  void initState() {
    super.initState();
    fetchProfile();
    fetchListFeature();
  }

  Future<void> fetchProfile() async {
    final profileService = ProfileService();
    final profile = await profileService.getMyProfile();
    ref.read(profileProvider.notifier).setMyProfile(profile);
  }

  Future<void> fetchListFeature() async {
    final featureService = FeatureService();
    final listFeature = await featureService.getAllFeature(ref);
    ref.read(featureProvider.notifier).setFeature(listFeature!);
  }

  Future<void> fetchPostShareProfile() async {
    final postService = PostService();
    final postShare = await postService.getMyPostShare(ref);
    if (postShare != null) {
      ref.read(postProvider.notifier).setPostShare(postShare);
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
    final listFeature = ref.watch(featureProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 146, 179, 248),
                    Color.fromARGB(255, 99, 142, 228)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: NetworkImage(
                        '${Constants.awsUrl}${profileInfo?.user.banner}'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            '${Constants.awsUrl}${profileInfo?.user.avata}'),
                        radius: 24,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profileInfo?.user.fullName ?? "",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Xin chào !',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfileScreen()));
                        },
                        icon: const Icon(Icons.settings,
                            color: Colors.white, size: 28),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Số lượng người theo dõi bạn',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    ('${profileInfo?.follower?.length.toString()} người'),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ActionButton(
                        icon: Icons.newspaper,
                        label: '${profileInfo?.objectCount.posts} bài đăng',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PostListPage(),
                            ),
                          );
                        },
                      ),
                      ActionButton(
                        icon: Icons.share,
                        label:
                            '${profileInfo?.objectCount.postShares} bài chia sẻ',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PostShareListPage(),
                            ),
                          );
                        },
                      ),
                      ActionButton(
                          icon: Icons.favorite_outlined,
                          label:
                              '${profileInfo?.objectCount.RequestFollow} yêu cầu',
                          onTap: () {}),
                      ActionButton(
                        icon: Icons.add_circle_outline,
                        label: '${profileInfo?.objectCount.images} bức ảnh',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageListPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Financial Insight Card
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                'Dành cho bạn',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.lightbulb_outline,
                          color: Color(0xFF5E3CE9), size: 30),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: "Vui lòng cập nhật ",
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                          children: [
                            TextSpan(
                              text: "thông tin tài khoản",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: " để chúng tôi có thể đề xuất cho bạn!"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final itemFeature = listFeature[index];
                return FeatureCard(
                  itemFeature: itemFeature,
                );
              },
              itemCount: listFeature.length,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Hoạt động gần đây',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}

// Transaction Tile Widget
class TransactionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;
  final String date;
  final Color amountColor;

  const TransactionTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.date,
    required this.amountColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFF3F4FB),
        radius: 24,
        child: Icon(icon, color: Colors.redAccent, size: 28),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '$subtitle · $date',
        style: const TextStyle(fontSize: 12, color: Colors.black54),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: amountColor),
      ),
    );
  }
}

// Action Button Widget
class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap; // onTap callback

  const ActionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap, // nhận onTap từ widget cha
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // gọi onTap khi nhấn vào widget
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
            ),
            child: Icon(icon, size: 28, color: const Color(0xFF5E3CE9)),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
