import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InforProfileScreen extends StatelessWidget {
  final ProfileData profile;
  const InforProfileScreen({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15, 
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Hồ sơ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: Colors.black),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.1), // Độ dày của viền dưới
          child: Divider(
            color: Colors.grey,
            height: 0.1,
            thickness: 0.1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nickname Row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: .0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/people.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nickname',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        profile.user.nickName ?? '',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Email Row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/email.svg',
                    width: 18,
                    height: 18,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        profile.user.email ?? "",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Phone Row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/phone.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Số điện thoại',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        profile.user.phone ?? "",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Languages Row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/world.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Languages',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Việt Nam, English',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Birthday Row
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/birthday.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sinh nhật',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        formatBirth(profile.user.birth) ?? "",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Interests Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/icons/human.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interests',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: profile.user.favorite!
                              .map((favoriteData) => Chip(
                                    label: Text(favoriteData.nameFavorite),
                                    backgroundColor: Colors.grey[200],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ))
                              .toList(), // Chuyển thành danh sách các Widget
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bio Section
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info, color: Colors.grey),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        profile.user.aboutMe ?? "",
                        style: TextStyle(fontSize: 14),
                      ),
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
