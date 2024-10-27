import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // List to store selected privacy options
  List<String> selectedPrivacy = ['Mọi người']; // Default: "Mọi người" selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Tạo bài viết'),
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
              radius: 25.0,
              backgroundImage: AssetImage(
                  'assets/images/bg-landing.png'), 
            ),
            title: Text(
              'Nguyễn Lê Hữu Duy',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: PopupMenuButton<String>(
              onSelected: (String value) {
                setState(() {
                  selectedPrivacy = [value]; 
                });
              },
              initialValue: selectedPrivacy[0], 
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'Mọi người',
                  child: Text('Mọi người'),
                ),
                PopupMenuItem<String>(
                  value: 'Chỉ mình tôi',
                  child: Text('Chỉ mình tôi'),
                ),
                PopupMenuItem<String>(
                  value: 'Người theo dõi',
                  child: Text('Người theo dõi'),
                ),
              ],
              child: Row(
                children: [
                  Icon(Icons.public, color: Colors.grey),
                  SizedBox(width: 5.0),
                  Text(selectedPrivacy[0]), 
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Bạn đang suy nghĩ điều gì?',
                border: InputBorder.none,
              ),
              maxLines: null,
            ),
          ),
          Spacer(),
          Divider(height: 1),
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
  Widget _buildOptionItem(
      {required IconData icon,
      required String text,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
