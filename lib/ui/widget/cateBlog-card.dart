import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/CateBlogs/CateBlogItem/CateBlogsItem/CateBlogItem.dart';

class CateBlogCard extends StatelessWidget {
  final CateBlogItem cateBlogItem;
  final Function(String cateId) onCategorySelected; 

  const CateBlogCard({
    super.key,
    required this.cateBlogItem,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: ElevatedButton(
        onPressed: () {
          onCategorySelected(cateBlogItem.id); 
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Colors.blueAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          cateBlogItem.title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
