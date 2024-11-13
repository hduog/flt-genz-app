import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/widget/blog_image.card.dart';
import 'package:flutter_application_1/ui/widget/blogs.card.dart';
import 'package:flutter_application_1/ui/widget/cate_text_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
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
            Container(
              padding:
                  EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SizedBox(
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
                    ),
                    Text(
                      "CHIA SẺ VÀ TÂM SỰ",
                      style: TextStyle(
                          fontSize: 22,
                          color: colorTextHeader,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Nơi khám phá và chia sẻ về sức khỏe tình thần",
                      style: TextStyle(color: colorTextSubPart),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: colorIconActive),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/search.svg',
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(width: 20),
                              SizedBox(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration(
                                      labelText: 'Nhập tên bài viết..',
                                      border: InputBorder.none,
                                      labelStyle: TextStyle(
                                          color: colorIconActive,
                                          fontSize: 14)),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/icons/option-search.svg',
                            width: 25,
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton(),
                            CateTextButton()
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Bài viết nổi bật",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BlogsImageCard(),
                    Text(
                      "Đề xuất cho bạn",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                    BlogsCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
