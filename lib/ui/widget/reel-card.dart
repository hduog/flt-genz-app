import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReelCard extends StatelessWidget {
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  height: 60,
                  image: AssetImage('assets/images/quote.png'),
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nguyễn Văn A",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: colorTextDefault),
                    ),
                    Text(
                      "DD/MM/YYYY HH:mm",
                      style: TextStyle(color: colorTextSubPart),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              child: Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/reels-test.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 90,
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
                        const Text(
                          "1,810",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/comment.svg',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "810",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                        ),
                      ]),
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
                        const Text(
                          "10",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic),
                        ),
                      ]),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 80,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/save.svg',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
