import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/view/detailPostShare/detailPostShare.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostShareListPage extends ConsumerStatefulWidget {
  const PostShareListPage({super.key});

  @override
  ConsumerState<PostShareListPage> createState() => _PostShareListPage();
}

class _PostShareListPage extends ConsumerState<PostShareListPage> {
  @override
  void initState() {
    super.initState();
    fetchPostShareProfile();
  }

  Future<void> fetchPostShareProfile() async {
    final postService = PostService();
    final postShare = await postService.getMyPostShare(ref);
    if (postShare != null) {
      ref.read(postProvider.notifier).setPostShare(postShare);
    }
  }

  @override
  Widget build(BuildContext context) {
    final postShares = ref.watch(postProvider).postShares;

    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15, 
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Danh sách bài chia sẻ',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: colorBackground,
      ),
      body: ListView.builder(
        itemCount: postShares.length,
        itemBuilder: (context, index) {
          final post = postShares[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostShareDetailPage(postItem: post),
                ),
              );
            },
            child: ReelCard(
                postItem: post,
                is_share: true), 
          );
        },
      ),
    );
  }
}
