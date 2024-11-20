import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/post/post_service.dart';
import 'package:flutter_application_1/ui/widget/reel-card.dart';
import 'package:flutter_application_1/view-models/post/post.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});
  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
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
      return const Center(child: CircularProgressIndicator());
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
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
                                  Icons.notifications_none,
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
                      // MAIN CONTENT
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, bottom: 3, top: 3, right: 5),
                        child: SizedBox(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        image: AssetImage(
                                            'assets/images/quote.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              // CONTAINER OF UPLOAD REEL
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 5, bottom: 3, top: 3, right: 5),
                                decoration: BoxDecoration(
                                  color: colorBackgroundCard,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 130,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image(
                                            height: 60,
                                            image: AssetImage(
                                                'assets/images/quote.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                          SizedBox(width: 20),
                                          Flexible(
                                            child: Text(
                                              "Hãy chia sẻ suy nghĩ của bạn...",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: colorIconDefault,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 90,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/upload-pic.svg',
                                                  width: 13,
                                                  height: 13,
                                                ),
                                                const SizedBox(
                                                  child: Text(" | "),
                                                ),
                                                const Text("Hình Ảnh"),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/upload-video.svg',
                                                  width: 13,
                                                  height: 13,
                                                ),
                                                const SizedBox(
                                                  child: Text(" | "),
                                                ),
                                                const Text("Videos"),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 80,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/upload-file.svg',
                                                  width: 13,
                                                  height: 13,
                                                ),
                                                const SizedBox(
                                                  child: Text(" | "),
                                                ),
                                                const Text("Tệp"),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              // LIST REELS
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: postData.length,
                                itemBuilder: (context, index) {
                                  final post = postData[index];
                                  return ReelCard(postItem: post);
                                },
                              ),
                            ],
                          ),
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
