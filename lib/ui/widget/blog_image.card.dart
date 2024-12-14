import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/HotBlogModel/HotBlogItemForGet/HotBlogItemForGet.dart';

class BlogsImageCard extends StatelessWidget {
  final List<HotBlogItemForGet> hotBlogItems;
  const BlogsImageCard({super.key, required this.hotBlogItems});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: hotBlogItems.map((hotBlogItem) => buildNewsCard(context, hotBlogItem)).toList(),
      ),
    );
  }

  // Function to build a single card
  Widget buildNewsCard(BuildContext context, HotBlogItemForGet hotBlogItem) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage('${Constants.awsUrl}${hotBlogItem.thumbnailBlog}'), // Background image
          fit: BoxFit.cover,
        ),
      ),
      width: 300, // Fixed width for each card
      height: 200,
      child: Stack(
        children: [
          // Dark overlay for text contrast
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          // Positioned content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Author's avatar and name
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('${Constants.awsUrl}${hotBlogItem.account?.avata ?? ''}'),
                      backgroundColor: Colors.grey[300], // Placeholder background
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        hotBlogItem.account?.fullName ?? 'Unknown Author',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Blog title
                Text(
                  hotBlogItem.title ?? 'Không có tiêu đề',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                // Blog categories
                Text(
                  hotBlogItem.cateBlog.map((cate) => cate.title).join(', ') ?? '',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
