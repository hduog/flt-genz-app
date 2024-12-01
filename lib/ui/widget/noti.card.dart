import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/NotificationModel/NotificationData/NotificationData.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotiCard extends StatelessWidget {
  final NotificationData notificationItem;
  const NotiCard({super.key, required this.notificationItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: colorTextSubPart, width: 0.2))),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/new-noti.svg',
                width: 18,
                height: 18,
              ),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notificationItem.messageNotifications ?? ""),
                SizedBox(height: 3),
                Text(
                  formatDate(notificationItem.created_at) ?? "DD/MM/YYYY hh:mm",
                  style: TextStyle(fontSize: 13, color: colorTextSubPart),
                )
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/images/quote.png'),
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}
