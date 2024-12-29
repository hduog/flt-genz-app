import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/Search/SearchModel/SearchModel.dart';
import 'package:flutter_application_1/core/data/models/Search/SearchPostResponse/SearchPostResponse.dart';
import 'package:flutter_application_1/ui/view/detailPost/detailPost.dart';

class SearchCard extends StatelessWidget {
  final dynamic item;

  const SearchCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    if (item is SearchUser) {
      final user = item as SearchUser;
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        padding: const EdgeInsets.all(8), 
        child: Row(
          children: [
            // Avatar
            CircleAvatar(
              radius: 24,
              backgroundImage: user.avata.isNotEmpty
                  ? NetworkImage('${Constants.awsUrl}${user.avata}')
                  : null,
              child: user.avata.isEmpty
                  ? const Icon(Icons.person, size: 24)
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.fullName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  if (user.nickName.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(
                      "(${user.nickName})",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
          ],
        ),
      );
    } else if (item is SearchPostResponse) {
      final post = item as SearchPostResponse;
      
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailPage(postId: post.id),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 10, right: 4, left: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                      '${Constants.awsUrl}${post.account.avata}',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.account.fullName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          post.created_at ?? "DD/MM/YYYY HH:mm",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                post.contentText ?? "",
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              if (post.images != null && post.images!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.network(
                    '${Constants.awsUrl}${post.images!.first.path}',
                    fit: BoxFit.fitWidth,
                    errorBuilder: (context, error, stackTrace) {
                      return const Text('Image not available');
                    },
                  ),
                ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}