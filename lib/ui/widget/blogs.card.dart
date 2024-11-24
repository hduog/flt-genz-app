import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/BlogModel/BlogData/BlogData.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html_unescape/html_unescape.dart';

class BlogsCard extends StatelessWidget {
  final BlogData blogItem;
  const BlogsCard({super.key, required this.blogItem});

  @override
  Widget build(BuildContext context) {
    final unescape = HtmlUnescape();
final bodyText = unescape.convert(blogItem.body ?? "").replaceAll(RegExp(r'<[^>]*>'), '');

    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
              child: Image.network(
                '${Constants.awsUrl}${blogItem.thumbnailBlog}',
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            
          ),
          SizedBox(width: 10,),
          Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                blogItem.title ?? "",
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: colorTextCateBlog, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.9, // Chiều rộng là 90% màn hình
                child: Text(
                  // blogItem.body ?? "",
                  bodyText,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    formatDate(blogItem.created_at) ?? "DD/MM/YYYY HH:mm",
                    style: TextStyle(
                      fontSize: 12,
                      color: colorTextSubPart,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text("${blogItem.views ?? 0} lượt xem",
                      style: TextStyle(fontSize: 12, color: colorTextSubPart))
                ],
              )
            ],
          ),
          ),
          SvgPicture.asset(
            'assets/icons/dots-vertical.svg',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
