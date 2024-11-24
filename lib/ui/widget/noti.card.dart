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
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: colorTextSubPart, width: 0.2))),
      padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
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
              Stack(
                children: [
                Image.network(
                '${Constants.awsUrl}${notificationItem.typeNotification!.thumbnailNoti ?? "assets/images/quote.png"}',
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: colorIconButtonOverlay),
                        padding: EdgeInsets.all(2),
                        child: SvgPicture.asset(
                          'assets/icons/love-noti.svg',
                          width: 16,
                          height: 16,
                        ),
                      ))
                ],
              ),
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
                   formatDate(notificationItem.created_at) ??  "DD/MM/YYYY hh:mm",
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
