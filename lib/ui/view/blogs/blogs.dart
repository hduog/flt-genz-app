import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_application_1/core/service/cateBlog/cateBlog_service.dart';
import 'package:flutter_application_1/core/service/blog/blog_service.dart';
import 'package:flutter_application_1/ui/view/blogs/detailblog.dart';
import 'package:flutter_application_1/ui/widget/blog_image.card.dart';
import 'package:flutter_application_1/ui/widget/blogs.card.dart';
import 'package:flutter_application_1/ui/widget/cateBlog-card.dart';
import 'package:flutter_application_1/view-models/cateBlog/cateBlog.prvd.dart';
import 'package:flutter_application_1/view-models/hotBlog/hotBlog.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/view-models/blog/blog.prvd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Blogs extends ConsumerStatefulWidget {
  const Blogs({super.key});
  ConsumerState<Blogs> createState() => _BlogsState();
}

class _BlogsState extends ConsumerState<Blogs> {
  List<BlogData> filteredBlogs = []; 
  bool isFiltered = false; 
  bool noContent = false; 

  @override
  void initState() {
    super.initState();
    fetchBlogs();
    fetchCate();
    fetchHotBlogs();
  }

  Future<void> fetchHotBlogs() async {
    final blogService = BlogService();
    final hotBlogs = await blogService.getHotBlogs(ref);
    if (hotBlogs != null) {
      ref.read(hotBlogProvider.notifier).setHotBlogs(hotBlogs);
    }
  }

  Future<void> fetchBlogs() async {
    final blogService = BlogService();
    final blogs = await blogService.getBlogs(ref);
    if (blogs != null) {
      ref.read(blogProvider.notifier).setBlogs(blogs);
    }
  }

  Future<void> fetchCate() async {
    final cateBlogService = CateBlogService();
    final cateBlog = await cateBlogService.getCateBlogs(ref);
    if (cateBlog != null) {
      ref.read(cateBlogProvider.notifier).setCateBlogs(cateBlog);
    }
  }

  Future<void> fetchBlogsByCategory(String cateId) async {
    try {
      final blogService = BlogService();
      final blogs = await blogService.getBlogsByCategory(cateId, ref);
      if (blogs != null) {
        setState(() {
          if (blogs.isEmpty) {
            noContent = true; 
          } else {
            filteredBlogs = blogs; 
            isFiltered = true; 
            noContent =
                false; 
          }
        });
      }
    } catch (e) {
      print('Error fetching blogs by category: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final cateBlogData = ref.watch(cateBlogProvider);
    final blogData = isFiltered ? filteredBlogs : ref.watch(blogProvider);
    final hotBlogData = ref.watch(hotBlogProvider);

    if (cateBlogData.isEmpty || blogData.isEmpty) {
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo và tiêu đề
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
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
                    // Thanh tìm kiếm
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, bottom: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              const SizedBox(width: 20),
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
                    // Danh mục bài viết
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cateBlogData.length,
                        itemBuilder: (context, index) {
                          final cateBlogs = cateBlogData[index];
                          return Padding(
                            padding: const EdgeInsets.only(),
                            child: CateBlogCard(
                              cateBlogItem: cateBlogs,
                              onCategorySelected: (cateId) =>
                                  fetchBlogsByCategory(cateId),
                            ),
                          );
                        },
                      ),
                    ),
                    // Bài viết nổi bật
                    const Text(
                      "Bài viết nổi bật",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Container(
                      height: 200, // Chiều cao của ListView
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: ListView.builder(
                        shrinkWrap:
                            true, // Dùng khi ListView được đặt trong một widget khác có chiều cao cố định
                        scrollDirection: Axis.horizontal, // Cuộn ngang
                        itemCount: hotBlogData
                            .length, // Đảm bảo cung cấp số phần tử cho ListView
                        itemBuilder: (context, index) {
                          final hotBlog = hotBlogData[
                              index]; // Lấy từng bài viết trong danh sách
                          if (hotBlogData.isEmpty) {
                            return Center(
                                child: Text("No hot blogs available"));
                          } // Truy xuất dữ liệu từ danh sách
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 16.0), // Khoảng cách giữa các Card
                            child: GestureDetector(
                              onTap: () {
                                // Điều hướng đến chi tiết bài viết khi nhấn vào bài hotBlog
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BlogDetailScreen(
                                        blogId: hotBlog
                                            .id), // Truyền ID bài viết đúng
                                  ),
                                );
                              },
                              child: BlogsImageCard(
                                hotBlogItems: [
                                  hotBlog
                                ], // Gọi widget BlogsImageCard cho bài hotBlog
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Bài viết đề xuất
                    const Text(
                      "Đề xuất cho bạn",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    noContent
                        ? const Center(child: Text("Không có nội dung"))
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: blogData.length,
                            itemBuilder: (context, index) {
                              final blog = blogData[index];
                              return BlogsCard(
                                blogItem: blog,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          BlogDetailScreen(blogId: blog.id),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
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
