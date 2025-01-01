import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/Search/SearchModel/SearchModel.dart';
import 'package:flutter_application_1/ui/view/profile/profileOther/profileOther.dart';

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
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileOtherScreen(accountId: user.id), 
            ),
          );
        },
        child:  Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
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
      ));
    } else if (item is SearchPosts) {
      final post = item as SearchPosts;
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: post.account.avata.isNotEmpty
                  ? NetworkImage('${Constants.awsUrl}${post.account.avata}')
                  : null,
              child: post.account.avata.isEmpty
                  ? const Icon(Icons.person, size: 24)
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.account.fullName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    post.created_at,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    post.contentText,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return SizedBox(); // Handle unknown types
    }
  }
}
