import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/CommentFullGet/CommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/AccountCommentFullGet/AccountCommentFullGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/Comment/CommentForGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CommentReelPost.dart';
import 'package:flutter_application_1/core/data/models/PostModel/CreatePostShare.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_application_1/core/data/models/PostModel/UpdateReactionReelPost.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PostDetailPage extends ConsumerStatefulWidget {
  final DataGet postItem;
  final List<CommentForGet>? comments;
  const PostDetailPage({
    super.key,
    required this.postItem,
    this.comments = const [],
  });

  @override
  ConsumerState<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends ConsumerState<PostDetailPage> {
  final postService = PostService();
  bool isLiked = false;
  int countLike = 0;
  int countComment = 0;
  int countShare = 0;
  List<CommentFullGet> listComment = [];
  int _currentIndex = 0;
  bool _isExpanded = false;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
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
    // Set initial state
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

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenImage(
          imageUrl: imageUrl,
          content: widget.postItem.contentText ?? '',
        ),
      ),
    );
  }

  Future<void> _likePost() async {
    setState(() {
      isLiked ? countLike-- : countLike++;
      isLiked = !isLiked;
    });
    final data = UpdateReactionReelPost(widget.postItem.id);
    await postService.updateStatusReaction(data);
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
      await postService.commentReelPost(data);
    }
  }

  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  Future<void> _createPostShare() async {
    final account = ref.read(userProvider);
    final data = CreatePostShare(
      content: _contentCmtController.text,
      accountId: account!.id,
      postId: widget.postItem.id,
    );

    try {
      print(
          "Content to share: ${_contentCmtController.text}"); // Kiểm tra nội dung
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
                  controller: _contentCmtController,
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

  Future<void> getAllComment() async {
    final comments =
        await postService.getAllCommentReelPost(widget.postItem.id);
    if (comments!.isNotEmpty) {
      setState(() {
        listComment = comments;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final commentsToShow =
        _showAllComments ? listComment : listComment.take(5).toList();

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

                  // Post content
                  Text(
                    widget.postItem.contentText ?? "",
                    style: const TextStyle(fontSize: 16),
                    maxLines: _isExpanded ? null : 3,
                  ),
                  GestureDetector(
                    onTap: toggleContent,
                    child: Visibility(
                      visible: widget.postItem.contentText != null &&
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
                  if (widget.postItem.images != null &&
                      widget.postItem.images!.isNotEmpty)
                    Column(
                      children: [
                        Stack(
                          children: [
                            CarouselSlider(
                              items: widget.postItem.images!.map((url) {
                                return GestureDetector(
                                  onTap: () => _showFullScreenImage(
                                      context, Constants.awsUrl + url.path),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                        Constants.awsUrl + url.path,
                                        fit: BoxFit.contain,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width:
                                            MediaQuery.of(context).size.width),
                                  ),
                                );
                              }).toList(),
                              options: CarouselOptions(
                                enlargeCenterPage: true,
                                enableInfiniteScroll:
                                    widget.postItem.images!.length > 1,
                                scrollPhysics:
                                    widget.postItem.images!.length > 1
                                        ? const BouncingScrollPhysics()
                                        : const NeverScrollableScrollPhysics(),
                                viewportFraction: 1.0,
                                height: 400,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                              ),
                              carouselController: _carouselController,
                            ),
                            // Left navigation button
                            if (widget.postItem.images!.length > 1)
                              Positioned(
                                left: 1,
                                top: 0,
                                bottom: 0,
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_back_ios,
                                      color: colorIconActive),
                                  onPressed: () =>
                                      _carouselController.previousPage(),
                                ),
                              ),
                            // Right navigation button
                            if (widget.postItem.images!.length > 1)
                              Positioned(
                                right: 1,
                                top: 0,
                                bottom: 0,
                                child: IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios,
                                      color: colorIconActive),
                                  onPressed: () =>
                                      _carouselController.nextPage(),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: widget.postItem.images!
                              .asMap()
                              .entries
                              .map((entry) {
                            return GestureDetector(
                              onTap: () => setState(() {
                                _currentIndex = entry.key;
                              }),
                              child: Container(
                                width: 8.0,
                                height: 8.0,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentIndex == entry.key
                                      ? Colors.blueAccent
                                      : Colors.grey,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  const SizedBox(height: 5),
                  // totalReaction (like, comment, share)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildReactionInfo(
                          isLiked ? 'like_active' : 'like', countLike,
                          onReactionTap: _likePost),
                      _buildReactionInfo('comment', countComment,
                          onReactionTap: _showKeyboard),
                      _buildReactionInfo('icon_share', countShare,
                          onReactionTap: () => _showShareModal(context)),
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
                              size: 30,
                              Icons.send_outlined,
                              color: colorTextDefault,
                            ),
                            onPressed: _commentPost,
                          ),
                          labelText: 'Bình luận bài viết..',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: const TextStyle(
                              color: colorIconDefault, fontSize: 14)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Comments Section
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
                                  Text(comment.created_at ?? ''),
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
                        _showAllComments
                            ? 'Ẩn bớt bình luận'
                            : 'Xem tất cả bình luận',
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

// Helper widget for reaction information
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

// show full screen image
class FullScreenImage extends StatefulWidget {
  final String? imageUrl;
  final String content;

  const FullScreenImage({
    super.key,
    this.imageUrl,
    required this.content,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  bool _isExpanded = false;

  void _toggleContent() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: InteractiveViewer(
              child: Image.network(
                widget.imageUrl ?? '',
                fit: BoxFit.contain,
                height: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Use SingleChildScrollView for the content
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        _isExpanded
                            ? widget.content
                            : widget.content.length > 100
                                ? '${widget.content.substring(0, 100)}...'
                                : widget.content,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _toggleContent,
                    child: Visibility(
                      visible: widget.content.isNotEmpty &&
                          widget.content.length > 100,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
