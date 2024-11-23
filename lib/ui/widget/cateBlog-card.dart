import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogItem/CateBlogsItem/CateBlogItem.dart';

class CateBlogCard extends StatelessWidget {
  final CateBlogItem cateBlogItem;

  const CateBlogCard({super.key, required this.cateBlogItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {
          // Xử lý khi nhấn vào loại blog
          print('Selected category: ${cateBlogItem.title}');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.blueAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            if (cateBlogItem.thumbnailCateBlog != null &&
                cateBlogItem.thumbnailCateBlog!.startsWith('http'))
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.network(
                  cateBlogItem.thumbnailCateBlog!,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image, size: 30),
                ),
              ),
            Text(
              cateBlogItem.title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
