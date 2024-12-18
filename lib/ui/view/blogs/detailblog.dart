import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/blog/blog_service.dart';

import 'package:flutter_application_1/view-models/blog/blogDetail.prvd.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogDetailScreen extends ConsumerStatefulWidget {
  final String blogId;
  const BlogDetailScreen({required this.blogId, super.key});
  @override
  // ignore: library_private_types_in_public_api
  _BlogDetailScreenState createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends ConsumerState<BlogDetailScreen> {
  @override
  void initState() {
    super.initState();
    fetchBlogById(widget.blogId);
  }

  Future<void> fetchBlogById(String id) async {
    final blogService = BlogService();
    final blogById = await blogService.getBlogById(ref, id);
    if (blogById != null) {
      ref.read(blogDetailProvider.notifier).setBlogDetail(blogById);
    }
  }

  @override
  Widget build(BuildContext context) {
    final blogDetail = ref.watch(blogDetailProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBackground,
        title: Text(
          blogDetail?.blog?.title ?? 'chi tiết bài',
          style: const TextStyle(fontSize: 14),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: colorBackground,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      blogDetail?.blog.title ?? "",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      formatDate(blogDetail?.blog.created_at) ?? "",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              // Image
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: NetworkImage(
                        '${Constants.awsUrl}${blogDetail?.blog.thumbnailBlog ?? ""}'),
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Html(
                  data: blogDetail?.blog.body ?? "",
                  style: {
                    "body": Style(
                      fontSize: FontSize(14),
                      lineHeight: LineHeight(1),
                    ),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
