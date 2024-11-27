import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/PostModel/Comment/CommentForGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostDetailPage extends StatelessWidget {
  final DataGet postItem;
  final List<CommentForGet>? comments;
  const PostDetailPage({
    super.key,
    required this.postItem,
    this.comments = const [],
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết bài viết'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Show more options (edit, delete, etc.)
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // account and time
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        '${Constants.awsUrl}${postItem.account.avata ?? ''}'), // Replace with user's profile image
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postItem.account.fullName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          formatDate(postItem.created_at) ?? "DD/MM/YYYY HH:mm",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Post content
              Text(
                postItem.contentText ?? "",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              // Post image (if any)
              if (postItem.images != null && postItem.images!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.network(
                    '${Constants.awsUrl}${postItem.images!.first.path}',
                    fit: BoxFit.fitWidth,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text('Image not available');
                    },
                  ),
                ),
              const SizedBox(height: 5),
              // permissionPost info

              // totalReaction (like, comment, share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildReactionInfo('like', postItem.totalReaction ?? 0),
                  _buildReactionInfo('comment', postItem.totalComment ?? 0),
                  _buildReactionInfo('share', 0), 
                ],
              ),
              const SizedBox(height: 20),

              // Comments Section
              const Text(
                'Bình luận',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              ListView.builder(
                // physics:
                //     const NeverScrollableScrollPhysics(), // Tránh conflict với SingleChildScrollView
                shrinkWrap: true,
                itemCount: comments?.length ?? 0,
                itemBuilder: (context, index) {
                  final comment = comments?[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              '${Constants.awsUrl}${comment?.account.avata ?? ''}'), // Replace with user's profile image
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment?.account.name ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(comment?.content ?? ''),
                              const SizedBox(height: 5),
                              // Text(
                              //   (comment?.created_at) ?? '', // Cai nay k format duoc
                              //   style: const TextStyle(
                              //     fontSize: 12,
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget for reaction information
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
}
