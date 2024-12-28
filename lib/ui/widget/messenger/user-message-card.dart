import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String message;
  final Color backgroundColor;
  final int index;
  final Color indicatorColor;

  const UserCard({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.message,
    required this.backgroundColor,
    required this.index,
    required this.indicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Chiều rộng của thẻ
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header: Chỉ số và biểu tượng
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Chỉ số
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.deepPurple,
                child: Text(
                  index.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Điểm trạng thái
              CircleAvatar(
                radius: 6,
                backgroundColor: indicatorColor,
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Ảnh đại diện
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              avatarUrl,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          // Tên người dùng
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          // Dòng trạng thái
          Text(
            message,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
