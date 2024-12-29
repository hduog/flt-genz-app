import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html_unescape/html_unescape.dart';

class BlogsCard extends StatefulWidget {
  final BlogData blogItem;
  final VoidCallback onTap;
  const BlogsCard({super.key, required this.blogItem, required this.onTap});
  @override
  _BlogsCardState createState() => _BlogsCardState();
}

class _BlogsCardState extends State<BlogsCard> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();
    final bodyText = unescape
        .convert(widget.blogItem.body ?? "")
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .trim();

    return GestureDetector(
        onTapDown: (_) {
          setState(() {
            isTapped = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            isTapped = false;
          });
          widget.onTap();
        },
        onTapCancel: () {
          setState(() {
            isTapped = false;
          });
        },
        child: Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isTapped ? Colors.grey.withOpacity(0.5) : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      '${Constants.awsUrl}${widget.blogItem.thumbnailBlog}',
                      fit: BoxFit.cover,
                      width: 80,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                    // height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.blogItem.title ?? "",
                          softWrap: true,
                          maxLines: 2,
                          style: const TextStyle(
                              color: colorTextCateBlog,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Text(  
                            bodyText,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              formatDate(widget.blogItem.created_at) ??
                                  "DD/MM/YYYY HH:mm",
                              style: const TextStyle(
                                fontSize: 12,
                                color: colorTextSubPart,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Text("${widget.blogItem.views ?? 0} lượt xem",
                                style: const TextStyle(
                                    fontSize: 12, color: colorTextSubPart))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 3),
                SvgPicture.asset(
                  'assets/icons/dots-vertical.svg',
                  width: 20,
                  height: 20,
                ),
              ],
            )));
  }
}
