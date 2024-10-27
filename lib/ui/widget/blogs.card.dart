import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlogsCard extends StatelessWidget {
  const BlogsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              image: AssetImage('assets/images/quote.png'),
              fit: BoxFit.cover,
              width: 70,
              height: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sức khỏe tâm thần",
                softWrap: true,
                style: TextStyle(
                    color: colorTextCateBlog, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 300,
                child: Text(
                  "Nếu một ngày bạn cảm thấy như muốn gục ngã thì...",
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "DD/MM/YYYY HH:mm",
                    style: TextStyle(
                      fontSize: 12,
                      color: colorTextSubPart,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text("11 lượt xem",
                      style: TextStyle(fontSize: 12, color: colorTextSubPart))
                ],
              )
            ],
          ),
          SvgPicture.asset(
            'assets/icons/dots-vertival.svg',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
