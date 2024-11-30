import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html_unescape/html_unescape.dart';

class BlogsCard extends StatelessWidget {
  final BlogData blogItem;
  const BlogsCard({super.key, required this.blogItem});

  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();
    final bodyText = unescape
        .convert(blogItem.body ?? "")
        .replaceAll(RegExp(r'<[^>]*>'), '');

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              '${Constants.awsUrl}${blogItem.thumbnailBlog}',
              fit: BoxFit.cover,
              width: 130,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  blogItem.title ?? "",
                  softWrap: true,
                  style: const TextStyle(
                      color: colorTextCateBlog, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    bodyText,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      formatDate(blogItem.created_at) ?? "DD/MM/YYYY HH:mm",
                      style: const TextStyle(
                        fontSize: 12,
                        color: colorTextSubPart,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text("${blogItem.views ?? 0} lượt xem",
                        style: const TextStyle(
                            fontSize: 12, color: colorTextSubPart))
                  ],
                )
              ],
            ),
          ),
        ),
        SvgPicture.asset(
          'assets/icons/dots-vertical.svg',
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
