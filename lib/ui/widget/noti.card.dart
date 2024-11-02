import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotiCard extends StatelessWidget {
  const NotiCard({super.key});

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
                  Image(
                    image: AssetImage('assets/images/quote.png'),
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
                Text("Nguyễn Lê Hữu Duy đã yêu thích bạn hehe hehe hehe ."),
                SizedBox(height: 3),
                Text(
                  "DD/MM/YYYY hh:mm",
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
