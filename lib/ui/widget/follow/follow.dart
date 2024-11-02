import 'package:flutter/material.dart';

class FollowersFollowingPage extends StatelessWidget {
  // Dữ liệu ảo cho danh sách followers và following
  final List<Map<String, dynamic>> mockFollowers = List.generate(20, (index) {
    return {
      'name': 'User Follower ${index + 1}',
      'username': 'follower_user${index + 1}',
      'following': index % 2 == 0, // Một nửa đã follow, một nửa chưa follow
      'profilePicture': 'https://via.placeholder.com/150' // Hình ảnh ảo
    };
  });

  final List<Map<String, dynamic>> mockFollowing = List.generate(15, (index) {
    return {
      'name': 'User Following ${index + 1}',
      'username': 'following_user${index + 1}',
      'following': true, // Tất cả đều là những người mình đang follow
      'profilePicture': 'https://via.placeholder.com/150' // Hình ảnh ảo
    };
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Followers & Following"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Followers"),
              Tab(text: "Following"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildList(mockFollowers, "Follow"), // Danh sách Followers
            buildList(mockFollowing, "Following"), // Danh sách Following
          ],
        ),
      ),
    );
  }

  Widget buildList(List<Map<String, dynamic>> users, String buttonText) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user['profilePicture']),
          ),
          title: Text(user['username']),
          subtitle: Text(user['name']),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: user['following'] ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              // Thực hiện hành động follow/unfollow
            },
            child: Text(user['following'] ? 'Following' : buttonText),
          ),
        );
      },
    );
  }
}