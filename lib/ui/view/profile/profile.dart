import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/view/profile/edit_profile_screen.dart';
import 'package:flutter_application_1/ui/widget/profile/infor_profile.dart';
import 'package:flutter_application_1/ui/widget/profile/tab_bar.dart';
import 'package:flutter_application_1/ui/widget/profile/tag_profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), 
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
          preferredSize: Size.fromHeight(0.1),
          child: Divider(
            color: Colors.grey,
            height: 0.1,
            thickness: 0.1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  color: Colors.blueAccent.withOpacity(0.8),
                  child: Image.asset(
                    'assets/images/reels-test.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/reels-test.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'Thanh Cuong',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Happy happyy haha",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("1K Followers",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text("520 Following",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            const TagProfile(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()),
                    );
                  },
                  child: const Text(
                    "Chỉnh sửa hồ sơ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorButton,
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InforProfileScreen()),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/icons/dots-vertical.svg',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
            const ProfileTabs(),
          ],
        ),
      ),
    );
  }
}
