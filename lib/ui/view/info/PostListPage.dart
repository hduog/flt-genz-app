import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/view/detailPost/detailPost.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostListPage extends ConsumerStatefulWidget {
  const PostListPage({super.key});

  @override
  ConsumerState<PostListPage> createState() => _PostListPage();
}

class _PostListPage extends ConsumerState<PostListPage> {
  @override
  void initState() {
    super.initState();
    fetchPostProfile();
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
    final posts = ref.watch(postProvider).posts;

    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        title: const Text(
          'Danh sách bài đăng',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: colorBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0), // Thêm khoảng cách giữa các item
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostDetailPage(postItem: post),
                    ),
                  );
                },
                child: ReelCard(
                  postItem: post,
                  is_share: false,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
