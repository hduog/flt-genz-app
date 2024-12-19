import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/auth/auth_service.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/view/detailPost/detailPost.dart';
import 'package:flutter_application_1/ui/view/detailPostShare/detailPostShare.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});
  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _hasMore = true;
  int _currentPage = 1;
  Future<void>? _loadingFuture;
  @override
  void initState() {
    super.initState();
    fetchPosts();
    fetchUser();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> fetchPosts({int page = 1}) async {
    try {
      final postService = PostService();
      final posts = await postService.getPosts('pageNo=$page');

      if (posts != null) {
        if (page == 1) {
          ref.read(postProvider.notifier).setPosts(posts);
        } else {
          ref.read(postProvider.notifier).addListPost(posts);
        }
        if (posts.isEmpty) {
          _hasMore = false;
        }
      } else {
        _hasMore = false;
      }
    } catch (e) {
      debugPrint('Error fetching posts: $e');
    } finally {
      _isLoadingMore = false;
    }
  }

  Future<void> fetchUser() async {
    final authService = AuthService();
    final userInfo = await authService.infoUser(ref);
    if (userInfo != null) {
      ref.read(userProvider.notifier).setInfoByToken(userInfo);
    }
  }

  Future<void> _loadMorePosts() async {
    if (_isLoadingMore || !_hasMore) return;
    setState(() => _isLoadingMore = true);
    _loadingFuture = fetchPosts(page: _currentPage + 1);
    await _loadingFuture;
    setState(() {
      _currentPage++;
      _isLoadingMore = false;
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 50 &&
        !_isLoadingMore &&
        _hasMore) {
      _loadMorePosts();
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_scrollController);

    final postState = ref.watch(postProvider); 
    final posts = postState.posts; 

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const Positioned(
                left: -200,
                top: -200,
                child: Image(
                  image: AssetImage('assets/images/bg-top.png'),
                  width: 500,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // TOP MENU
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/logo.svg',
                                  width: 50,
                                  height: 50,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/logo-string.svg',
                                  width: 150,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 45),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  size: 30,
                                  Icons.search,
                                  color: colorTextDefault,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(
                                  size: 30,
                                  Icons.send_outlined,
                                  color: colorTextDefault,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // MAIN CONTENT
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            // QUOTE IN DAY
                            Container(
                              decoration: BoxDecoration(
                                color: colorBackgroundCard,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const SizedBox(
                                height: 170,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: SizedBox(
                                        width: 250,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                'Thông điệp hôm nay của bạn là :'),
                                            SizedBox(height: 10),
                                            Text(
                                              '“ Hôm nay, hãy cho phép bản thân được nghỉ ngơi, bạn xứng đáng với điều đó! “',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: colorIconActive,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Image(
                                      width: 120,
                                      fit: BoxFit.fitWidth,
                                      image:
                                          AssetImage('assets/images/quote.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // LIST REELS
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: posts.length + 1,
                              itemBuilder: (context, index) {
                                if (index < posts.length) {
                                  final post = posts[index];
                                  final comments = post.comment_recent ?? [];
                                  return GestureDetector(
                                    onTap: () {
                                      if (post.is_share ?? false) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PostShareDetailPage(
                                                    postItem: post),
                                          ),
                                        );
                                      } else {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PostDetailPage(
                                              postItem: post,
                                              comments: comments,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    child: ReelCard(
                                      postItem: post,
                                      is_share: post.is_share ?? false,
                                    ),
                                  );
                                } else {
                                  return _hasMore
                                      ? const Center(
                                          child: CircularProgressIndicator())
                                      : const Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: const Center(
                                              child: Text(
                                                  'Không còn dữ liệu để hiển thị')),
                                        );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
