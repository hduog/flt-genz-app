import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Tạo bài viết"),
        actions: [
          TextButton(
            onPressed: () {
              // Implement post submission functionality here
            },
            child: Text(
              "Đăng",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
        ],
          bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.1),
          child: Divider(
            color: Colors.grey,
            height: 0.1,
            thickness: 0.1,
          ),
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/reels-test.png'), 
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nguyễn Lê Hữu Duy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.public, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text("Mọi người", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Bạn đang suy nghĩ điều gì?",
                border: InputBorder.none,
              ),
            ),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.image, color: Colors.grey),
                    SizedBox(height: 4),
                    Text("Hình ảnh/Video", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.emoji_emotions, color: Colors.grey),
                    SizedBox(height: 4),
                    Text("Cảm xúc", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.gif, color: Colors.grey),
                    SizedBox(height: 4),
                    Text("GIF", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey),
                    SizedBox(height: 4),
                    Text("Camera", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
