import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelCard extends StatelessWidget {
  final DataGet postItem;
  final bool is_share;

  const ReelCard({
    super.key,
    required this.postItem,
    required this.is_share,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: const Color.fromARGB(255, 161, 160, 160),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: is_share
          ? _buildSharedPostContent(context)
          : _buildOriginalPostContent(context),
    );
  }

  // PostShare
  Widget _buildSharedPostContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 8.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                  '${Constants.awsUrl}${postItem.account.avata}', 
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postItem.account.fullName, 
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      formatDate(postItem.created_at) ??
                          "DD/MM/YYYY HH:mm", // Ngày chia sẻ
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            postItem.contentText ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
          // PostSharedItem
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.shade100,
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                        '${Constants.awsUrl}${postItem.infoAuthorAndPost?.author.avata}',
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postItem.infoAuthorAndPost?.author.fullName ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            formatDate(postItem.infoAuthorAndPost?.postInf.created_at) ??
                                "DD/MM/YYYY HH:mm",
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/dots-horizontal.svg',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  postItem.infoAuthorAndPost?.postInf.contentText ??
                      "Nội dung bài viết được chia sẻ",
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 8,
                ),
                if (postItem.infoAuthorAndPost?.postInf.images != null && postItem.infoAuthorAndPost!.postInf.images!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.network(
                      '${Constants.awsUrl}${postItem.infoAuthorAndPost?.postInf.images!.first.path}',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildReactionInfo('like', postItem.totalReaction ?? 0),
            _buildReactionInfo('comment', postItem.totalComment ?? 0),
            _buildReactionInfo('share', postItem.totalShare ?? 0),
            SvgPicture.asset(
              'assets/icons/save.svg',
              width: 24,
              height: 24,
            ),
          ],
        ),
        ],
      ),
    );
  }

  Widget _buildOriginalPostContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                '${Constants.awsUrl}${postItem.account.avata ?? ''}',
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postItem.account.fullName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    formatDate(postItem.created_at) ?? "DD/MM/YYYY HH:mm",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              'assets/icons/dots-horizontal.svg',
              width: 24,
              height: 24,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          postItem.contentText ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 5),
        if (postItem.images != null && postItem.images!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.network(
              '${Constants.awsUrl}${postItem.images!.first.path}',
              fit: BoxFit.fitWidth,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Image not available');
              },
            ),
          ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildReactionInfo('like', postItem.totalReaction ?? 0),
            _buildReactionInfo('comment', postItem.totalComment ?? 0),
            _buildReactionInfo('share', postItem.totalShare ?? 0),
            SvgPicture.asset(
              'assets/icons/save.svg',
              width: 24,
              height: 24,
            ),
          ],
        ),
      ],
    );
  }

  // Widget hiển thị thông tin tương tác (like, comment, share)
  Widget _buildReactionInfo(String iconName, int count) {
    return SizedBox(
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/$iconName.svg',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Text(
            "$count",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
