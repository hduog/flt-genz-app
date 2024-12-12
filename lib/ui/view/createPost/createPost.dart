import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreatePost extends ConsumerStatefulWidget {
  CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends ConsumerState<CreatePost> {
  // List to store selected privacy options
  List<String> selectedPrivacy = ['Mọi người']; // Default: "Mọi người" selected

  // void initState() {
  //   super.initState();
  //   fetchUser();
  // }

  // Future<void> fetchUser() async {
  //   final authService = AuthService();
  //   final userInfo = await authService.infoUser(ref);
  //   if (userInfo != null) {
  //     ref.read(userProvider.notifier).setInfoByToken(userInfo);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final userInfo =
        ref.watch(userProvider); // Sử dụng ref để lấy dữ liệu từ Riverpod
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Tạo bài viết'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              // Handle post upload
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Đăng',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile( 
            leading: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        '${Constants.awsUrl}${userInfo?.avata ?? ''}'), // Replace with user's profile image
                  ), // Replace with user's profile image
            title: Text(userInfo?.fullName ?? ''),
            subtitle: PopupMenuButton<String>(
              onSelected: (String value) {
                setState(() {
                  selectedPrivacy = [value];
                });
              },
              initialValue: selectedPrivacy[0],
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem<String>(
                  value: 'Mọi người',
                  child: Text('Mọi người'),
                ),
                const PopupMenuItem<String>(
                  value: 'Chỉ mình tôi',
                  child: Text('Chỉ mình tôi'),
                ),
                const PopupMenuItem<String>(
                  value: 'Người theo dõi',
                  child: Text('Người theo dõi'),
                ),
              ],
              child: Row(
                children: [
                  const Icon(Icons.public, color: Colors.grey),
                  const SizedBox(width: 5.0),
                  Text(selectedPrivacy[0]),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Bạn đang suy nghĩ điều gì?',
                border: InputBorder.none,
              ),
              maxLines: null,
            ),
          ),
          const Spacer(),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildOptionItem(
                  icon: Icons.photo,
                  text: 'Hình ảnh/Video',
                  onTap: () {
                    // Handle image or video upload
                  },
                ),
                _buildOptionItem(
                  icon: Icons.emoji_emotions,
                  text: 'Cảm xúc',
                  onTap: () {
                    // Handle emotions
                  },
                ),
                _buildOptionItem(
                  icon: Icons.gif,
                  text: 'GIF',
                  onTap: () {
                    // Handle GIF selection
                  },
                ),
                _buildOptionItem(
                  icon: Icons.camera_alt,
                  text: 'Camera',
                  onTap: () {
                    // Handle camera
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for the option items at the bottom
  Widget _buildOptionItem({
    required IconData icon,
    required String text,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
