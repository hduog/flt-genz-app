import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/CommentFullGet/CommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/AccountCommentFullGet/AccountCommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/Comment/CommentForGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/view/detailPost/detailPost.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostShareDetailPage extends ConsumerStatefulWidget {
  final DataGet postItem;
  final List<CommentForGet>? comments;
  const PostShareDetailPage({
    super.key,
    required this.postItem,
    this.comments = const [],
  });

  @override
  ConsumerState<PostShareDetailPage> createState() => _PostShareDetailPageState();
}

class _PostShareDetailPageState extends ConsumerState<PostShareDetailPage> {
  final postService = PostService();
  bool isLiked = false;
  int countLike = 0;
  int countComment = 0;
  int countShare = 0;
  List<CommentFullGet> listComment = [];
  bool _isExpanded = false;
  final TextEditingController _contentCmtController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showAllComments = false;

  void toggleContent() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    isLiked = widget.postItem.is_liked ?? false;
    countLike = widget.postItem.totalReaction ?? 0;
    countComment = widget.postItem.totalComment ?? 0;
    countShare = widget.postItem.totalShare ?? 0;
    getAllComment();
  }

  @override
  void dispose() {
    _contentCmtController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _likePost() async {
    setState(() {
      isLiked ? countLike-- : countLike++;
      isLiked = !isLiked;
    });
    final data = UpdateReactionReelPost(widget.postItem.id);
    await postService.updateStatusReactionPostShare(data);

     ref.read(postProvider.notifier).updateLikeStatus(widget.postItem.id, isLiked, countLike);
  }

  void _showKeyboard() {
    FocusScope.of(context).requestFocus(_focusNode);
  }

  Future<void> _commentPost() async {
    if (_contentCmtController.text.isNotEmpty) {
      final account = ref.read(userProvider);
      final data = CommentReelPost(
        contentCmt: _contentCmtController.text,
        accountId: account!.id,
        postId: widget.postItem.id,
      );

      _hideKeyboard();
      final newComment = CommentFullGet(
        account: AccountCommentFullGet(
          id: account.id,
          avata: account.avata,
          fullName: account.fullName,
          nickName: account.nickName,
        ),
        contentCmt: _contentCmtController.text,
        id: DateTime.now().toIso8601String(),
        created_at: DateTime.now().toString(),
      );

      setState(() {
        countComment++;
        _contentCmtController.clear();
        listComment = [newComment, ...listComment];
      });
      await postService.commentReelPostShare(data);
       ref.read(postProvider.notifier).updateCommentCount(widget.postItem.id, countComment);
    }
  }

  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  Future<void> getAllComment() async {
    final comments = await postService.getAllCommentReelPostShare(widget.postItem.id);
    if (comments!.isNotEmpty) {
      setState(() {
        listComment = comments;
      });
    }
  }

  void navigatetoPost() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostDetailPage(
          postId: widget.postItem.infoAuthorAndPost!.postInf.id,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final commentsToShow = _showAllComments ? listComment : listComment.take(5).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackground,
        title: const Text(
          'Chi tiết bài viết',
          style: TextStyle(fontSize: 14),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: colorBackground,
        child: GestureDetector(
          onTap: _hideKeyboard,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: NetworkImage(
                            '${Constants.awsUrl}${widget.postItem.account.avata ?? ''}'),
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
                    style: const TextStyle(fontSize: 16),
                    maxLines: _isExpanded ? null : 3,
                  ),
                  GestureDetector(
                    onTap: toggleContent,
                    child: Visibility(
                      visible: widget.postItem.contentText!.isNotEmpty &&
                          widget.postItem.contentText!.length > 100,
                      child: Text(
                        _isExpanded ? "Ẩn bớt" : "Xem thêm",
                        style: const TextStyle(
                          fontSize: 14,
                          color: colorTextHeader,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: navigatetoPost,
                    child: Container(
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
                                  '${Constants.awsUrl}${widget.postItem.infoAuthorAndPost!.author.avata ?? ''}',
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.postItem.infoAuthorAndPost!.author.fullName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    // Text(
                                    //   formatDate(
                                    //         widget.postItem.infoAuthorAndPost!.postInf.created_at,
                                    //       ) ??
                                    //       "DD/MM/YYYY HH:mm",
                                    //   style: const TextStyle(color: Colors.grey),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.postItem.infoAuthorAndPost!.postInf.contentText ??
                                "Nội dung bài viết được chia sẻ",
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(height: 8),
                          if (widget.postItem.infoAuthorAndPost!.postInf.images != null &&
                              widget.postItem.infoAuthorAndPost!.postInf.images!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Image.network(
                                '${Constants.awsUrl}${widget.postItem.infoAuthorAndPost!.postInf.images!.first.path}',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildReactionInfo(
                          isLiked ? 'like_active' : 'like', countLike,
                          onReactionTap: _likePost),
                      _buildReactionInfo('comment', countComment,
                          onReactionTap: _showKeyboard),
                      _buildReactionInfo('icon_share', 0),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: TextField(
                      controller: _contentCmtController,
                      focusNode: _focusNode,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.send_outlined,
                            size: 30,
                            color: colorTextDefault,
                          ),
                          onPressed: _commentPost,
                        ),
                        labelText: 'Bình luận bài viết..',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        labelStyle: const TextStyle(
                          color: colorIconDefault,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bình luận',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: commentsToShow.length,
                    itemBuilder: (context, index) {
                      final comment = commentsToShow[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage(
                                  '${Constants.awsUrl}${comment.account.avata ?? ''}'),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    comment.account.fullName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(comment.contentCmt ?? ''),
                                  const SizedBox(height: 5),
                                  Text(formatDate(comment.created_at) ?? ''),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  if (listComment.length > 5)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showAllComments = !_showAllComments;
                        });
                      },
                      child: Text(
                        _showAllComments ? 'Ẩn bớt bình luận' : 'Xem tất cả bình luận',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildReactionInfo(String iconName, int count, {VoidCallback? onReactionTap}) {
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
