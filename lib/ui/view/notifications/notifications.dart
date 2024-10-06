import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/widget/noti.card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              const Positioned(
                  left: -200,
                  top: -200,
                  child: Image(
                    image: AssetImage('assets/images/bg-top.png'),
                    width: 500,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 210,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/logo.svg',
                                width: 50,
                                height: 50,
                              ),
                              SvgPicture.asset(
                                'assets/icons/logo-string.svg',
                                width: 150,
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(right: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Thông báo",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: colorTextHeader),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "bạn có 3 thông báo của ngày hôm nay",
                                  style: TextStyle(color: colorTextSubPart),
                                )
                              ],
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colorIconButtonOverlay,
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/option-search.svg',
                                width: 20,
                                height: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Chưa đọc",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: [
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "7 ngày gần đây",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Column(
                        children: [
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                          NotiCard(),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
