import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/cateBlog/cateBlog_service.dart';
import 'package:flutter_application_1/ui/widget/blog_image.card.dart';
import 'package:flutter_application_1/ui/widget/blogs.card.dart';
import 'package:flutter_application_1/ui/widget/cateBlog-card.dart';
import 'package:flutter_application_1/view-models/cateBlog/cateBlog.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Blogs extends ConsumerStatefulWidget {
  const Blogs({super.key});
  @override
  ConsumerState<Blogs> createState() => _CateBlog();
}

class _CateBlog extends ConsumerState<Blogs> {
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final cateBlogService = CateBlogService();
    final cateBlog = await cateBlogService.getCateBlogs(ref);
    if (cateBlog != null) {
      ref.read(cateBlogProvider.notifier).setCateBlogs(cateBlog);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cateBlogData = ref.watch(cateBlogProvider);

    if (cateBlogData.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return (SafeArea(
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
                )),
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
                          width: 210,
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
                              )
                            ],
                          )),
                    ),
                    const Text(
                      "CHIA SẺ VÀ TÂM SỰ",
                      style: TextStyle(
                          fontSize: 22,
                          color: colorTextHeader,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Nơi khám phá và chia sẻ về sức khỏe tình thần",
                      style: TextStyle(color: colorTextSubPart),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 20, bottom: 5),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: colorIconActive),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/search.svg',
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Nhập tên bài viết..',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                          color: colorIconActive,
                                          fontSize: 14)),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/option-search.svg',
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 23,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cateBlogData.length,
                        itemBuilder: (context, index) {
                          final cateBlogs = cateBlogData[index];
                          return Padding(
                            padding: const EdgeInsets.only(),
                            child: CateBlogCard(cateBlogItem: cateBlogs),
                          );
                        },
                      ),
                    ),
                    const Text(
                      "Bài viết nổi bật",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BlogsImageCard(),
                    const Text(
                      "Đề xuất cho bạn",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
