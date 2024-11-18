import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ReelCard extends ConsumerStatefulWidget {
  @override
  ConsumerState<ReelCard> createState() => _ReelCardState();
}

class _ReelCardState extends ConsumerState<ReelCard> {
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final postService = PostService();
    final posts = await postService.getPosts(ref);
    if (posts != null) {
      ref.read(postProvider.notifier).setPosts(posts);
    }
  }

  @override
  Widget build(BuildContext context) {
    final postData = ref.watch(postProvider);

    if (postData.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: postData.length,
      itemBuilder: (context, index) {
        final post = postData[index];
        return Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: const Color.fromARGB(255, 161, 160, 160),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    height: 60,
                    image: AssetImage('assets/images/quote.png'),
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.account.fullName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          _formatDate(post.created_at) ?? "DD/MM/YYYY HH:mm",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/dots-horizontal.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                post.contentText ?? "",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height:5),
              if (post.images != null && post.images!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.network(
                    '${Constants.awsUrl}${post.images!.first.path}',
                    fit: BoxFit.fitWidth,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text(
                          'Image not available'); 
                    },
                  ),
                ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildReactionInfo('like', post.totalReaction ?? 0),
                  _buildReactionInfo('comment', post.totalComment ?? 0),
                  _buildReactionInfo('share', post.totalShare ?? 0),
                  SvgPicture.asset(
                    'assets/icons/save.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildReactionInfo(String iconName, int count) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/$iconName.svg',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(
            "$count",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  String? _formatDate(String? dateStr) {
    if (dateStr == null) return null;
    final dateTime = DateTime.parse(dateStr);
    final formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(dateTime);
  }
}
