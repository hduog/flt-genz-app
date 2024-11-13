import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/PostModel/DataGet/DataGet.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelCard extends StatelessWidget {
  final DataGet post;  // Sử dụng DataGet thay vì các tham số riêng biệt

  const ReelCard({
    Key? key,
    required this.post,  // Dữ liệu từ PostInfoGet
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, bottom: 3, top: 3, right: 5),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.5, color: const Color.fromARGB(255, 161, 160, 160)),
          borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(
                  height: 60,
                  image: AssetImage('assets/images/quote.png'),
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.account.fullName,  // Dùng thông tin tác giả từ post
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: colorTextDefault),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/dots-horizontal.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              child: post.images != null && post.images!.isNotEmpty
                  ? Image.network(post.images!.first.path)  // Hiển thị ảnh đầu tiên nếu có
                  : const Text("No image"),  // Nếu không có ảnh
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/like.svg',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(post.totalReaction.toString()),  // Hiển thị tổng số lượt thích
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/chat-left.svg',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(post.totalComment.toString()),  // Hiển thị tổng số bình luận
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/share.svg',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(post.totalShare.toString()),  // Hiển thị tổng số lượt chia sẻ
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
