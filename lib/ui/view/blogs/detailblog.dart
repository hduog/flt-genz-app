import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/blog/blog_service.dart';

import 'package:flutter_application_1/view-models/blog/blogDetail.prvd.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogDetailScreen extends ConsumerStatefulWidget {
  final String blogId;

  const BlogDetailScreen({required this.blogId, Key? key}) : super(key: key);

  @override
  _BlogDetailScreenState createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends ConsumerState<BlogDetailScreen> {
  // bool isFollowing = false;
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
    if (blogDetail == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Detail Blog'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Blog'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blogDetail.blog.title ?? "",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    formatDate(blogDetail.blog.created_at) ?? "",
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
                      '${Constants.awsUrl}${blogDetail.blog.thumbnailBlog ?? ""}'),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Author info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      '${Constants.awsUrl}${blogDetail.blog.account!.avata ?? ""}',
                    ),
                    radius: 25,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        blogDetail.blog.account!.fullName ?? 'Alexander Thịnh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // Spacer(),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       isFollowing = !isFollowing;
                  //     });
                  //   },
                  //   child: Text(isFollowing ? 'Following' : 'Follow'),
                  // ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: HtmlWidget(
            //     blogDetail.blog.body ??
            //         "",
            //     textStyle: TextStyle(
            //       fontSize: 16,
            //       height: 1.5,
            //     ),
            //     onTapUrl: (url) {
            //       print("Tapped URL: $url");
            //       return true; 
            //     },
                
                
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Html(
                data: blogDetail.blog.body ?? "",
                style: {
                  "body": Style(
                    fontSize: FontSize(14),
                    lineHeight: LineHeight(1),
                  ),
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined),
                      SizedBox(width: 8),
                      Text('1.2k'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment_outlined),
                      SizedBox(width: 8),
                      Text('1.2k'),
                    ],
                  ),
                  Icon(Icons.share_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
