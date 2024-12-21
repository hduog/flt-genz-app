import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  String followStatus = "Theo dõi"; 

  void handleFollow() {
    setState(() {
      if (followStatus == "Theo dõi") {
        followStatus = "Đã gửi yêu cầu";
      } else if (followStatus == "Đã gửi yêu cầu") {
        followStatus = "Đã theo dõi";
      }
    });
  }

  void handleUnfollow() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xác nhận"),
          content: const Text("Bạn có muốn hủy theo dõi người này không?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Không"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  followStatus = "Theo dõi"; 
                });
                Navigator.pop(context);
              },
              child: const Text("Có"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                handleFollow();
              },
              child: Text(
                followStatus,
                style: const TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: followStatus == "Đã theo dõi"
                    ? Colors.grey
                    : Colors.blue,
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(width: 10),
            if (followStatus == "Đã theo dõi")
              PopupMenuButton<String>(
                onSelected: (String value) {
                  if (value == "Hủy Theo Dõi") {
                    handleUnfollow();
                  }
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: "Hạn Chế",
                      child: Text("Hạn Chế"),
                    ),
                    const PopupMenuItem(
                      value: "Hủy Theo Dõi",
                      child: Text("Hủy Theo Dõi"),
                    ),
                  ];
                },
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
