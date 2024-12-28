import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CreatePostShare.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelCard extends ConsumerStatefulWidget {
  final DataGet postItem;
  final bool is_share;

  const ReelCard({
    super.key,
    required this.postItem,
    required this.is_share,
  });

  @override
  ConsumerState<ReelCard> createState() => _ReelCardState();
}

class _ReelCardState extends ConsumerState<ReelCard> {
  final postService = PostService();
  bool isLiked = false;
  int countLike = 0;
  int countComment = 0;
  int countShare = 0;

  @override
  void didChangeDependencies() {
  super.didChangeDependencies();

  final posts = ref.read(postProvider).posts;
  final currentPost = posts.firstWhere((p) => p.id == widget.postItem.id);
  
  setState(() {
    isLiked = currentPost.is_liked ?? false;
    countLike = currentPost.totalReaction ?? 0;
    countComment = currentPost.totalComment ?? 0;
    countShare = currentPost.totalShare ?? 0;
  });
}
  final TextEditingController _contentPostShareController =
      TextEditingController();

Future<void> _likePost() async {
  setState(() {
    isLiked = !isLiked;
    countLike = isLiked ? countLike + 1 : countLike - 1;
  });
  final data = UpdateReactionReelPost(widget.postItem.id);
  await postService.updateStatusReaction(data);
  ref.read(postProvider.notifier).updateLikeStatus(
    widget.postItem.id,
    isLiked,
    countLike
  );
}

  Future<void> _likePostShare() async {
    setState(() {
      isLiked ? countLike-- : countLike++;
      isLiked = !isLiked;
    });
    final data = UpdateReactionReelPost(widget.postItem.id);
    await postService.updateStatusReactionPostShare(data);
     ref.read(postProvider.notifier).updateLikeStatus(
    widget.postItem.id,
    isLiked,
    countLike
  );
  }

  void _showShareModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _contentPostShareController,
                  decoration: InputDecoration(
                    hintText: "Nhập nội dung chia sẻ...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: const Text("Hủy"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        _createPostShare();
                        Navigator.pop(context);
                      },
                      child: const Text("Chia sẻ"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _createPostShare() async {
    final account = ref.read(userProvider);
    final data = CreatePostShare(
      content: _contentPostShareController.text,
      accountId: account!.id,
      postId: widget.postItem.id,
    );

    try {
      print("Content to share: ${_contentPostShareController.text}");
      await postService.createPostShare(data);
      setState(() {
        countShare++;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chia sẻ thành công')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chia sẻ thất bại')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: widget.is_share
          ? _buildSharedPostContent(context)
          : _buildOriginalPostContent(context),
    );
  }

  // PostShare
  Widget _buildSharedPostContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 8.0), // Điều chỉnh khoảng cách padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thông tin người chia sẻ bài viết
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                  '${Constants.awsUrl}${widget.postItem.account.avata}', // Hình đại diện người chia sẻ
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.postItem.account.fullName, // Tên người chia sẻ
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   formatDate(widget.postItem.created_at) ??
                    //       "DD/MM/YYYY HH:mm", // Ngày chia sẻ
                    //   style: const TextStyle(color: Colors.grey),
                    // ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Nội dung bài viết chia sẻ
          Text(
            widget.postItem.contentText ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),

          // PostSharedItem
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.shade100,
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                        '${Constants.awsUrl}${widget.postItem.infoAuthorAndPost?.author.avata}',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.postItem.infoAuthorAndPost?.author
                                    .fullName ??
                                "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            formatDate(widget.postItem.infoAuthorAndPost
                                    ?.postInf.created_at) ??
                                "DD/MM/YYYY HH:mm",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  widget.postItem.infoAuthorAndPost?.postInf.contentText ??
                      "Nội dung bài viết được chia sẻ",
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 8,
                ),
                if (widget.postItem.infoAuthorAndPost?.postInf.images != null &&
                    widget
                        .postItem.infoAuthorAndPost!.postInf.images!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.network(
                      '${Constants.awsUrl}${widget.postItem.infoAuthorAndPost?.postInf.images!.first.path}',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildReactionInfo(isLiked ? 'like_active' : 'like', countLike,
                  onReactionTap: _likePostShare),
              _buildReactionInfo('comment', widget.postItem.totalComment ?? 0),
              _buildReactionInfo('icon_share', countShare,
                  onReactionTap: () => _showShareModal(context)),
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
  }

  Widget _buildOriginalPostContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                '${Constants.awsUrl}${widget.postItem.account.avata ?? ''}',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.postItem.account.fullName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    formatDate(widget.postItem.created_at) ??
                        "DD/MM/YYYY HH:mm",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          widget.postItem.contentText ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 5),
        if (widget.postItem.images != null &&
            widget.postItem.images!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.network(
              '${Constants.awsUrl}${widget.postItem.images!.first.path}',
              fit: BoxFit.fitWidth,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Image not available');
              },
            ),
          ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildReactionInfo(isLiked ? 'like_active' : 'like', countLike,
                onReactionTap: _likePost),
            _buildReactionInfo('comment', widget.postItem.totalComment ?? 0),
            _buildReactionInfo('icon_share', countShare,
                onReactionTap: () => _showShareModal(context)),
          ],
        ),
      ],
    );
  }

  // Widget hiển thị thông tin tương tác (like, comment, share)
  Widget _buildReactionInfo(String iconName, int count,
      {VoidCallback? onReactionTap}) {
    return GestureDetector(
      onTap: onReactionTap,
      child: SizedBox(
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
      ),
    );
  }
}
