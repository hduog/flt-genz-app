import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileOtherAccountData/ProfileOtherAccountData.dart';
import 'package:flutter_application_1/ui/view/profile/profileOther/profileOther.dart';

class FollowerScreen extends StatelessWidget {
  final ProfileData profileInfo;
  // final ProfileOtherAccountData profileOtherData;
  const FollowerScreen({super.key, required this.profileInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Ô tìm kiếm
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Tìm kiếm',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10, top: 5),
                  ),
                  onChanged: (value) {
                    // Xử lý tìm kiếm nếu cần
                  },
                ),
              ),
            ),

            // Nội dung chính
            Expanded(
              child: ListView(
                children: [
                  // Yêu cầu theo dõi
                  // ListTile(
                  //   leading: const CircleAvatar(
                  //     backgroundImage:
                  //         AssetImage('assets/images/reels-test.png'),
                  //   ),
                  //   title: const Text('Yêu cầu theo dõi'),
                  //   subtitle: const Text('_11thaq10'),
                  //   trailing:
                  //       const Icon(Icons.chevron_right, color: Colors.grey),
                  // ),

                  if (profileInfo.follower == null ||
                      profileInfo.follower!.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Bạn không có ai theo dõi",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  else ...[
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        "Tất cả người theo dõi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: profileInfo.follower!.length,
                      itemBuilder: (context, index) {
                        final user = profileInfo.follower![index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                '${Constants.awsUrl}${user.avata}'),
                          ),
                          title: Text(user.fullName),
                          subtitle: Text(user.nickName ?? ""),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProfileOtherScreen(accountId: user.id),
                              ),
                            );
                          },
                          trailing: ElevatedButton(
                            onPressed: () {
                              // Xử lý sự kiện "Gỡ"
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 244, 244, 244),
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), 
                          ),
                            ),
                            child: const Text(
                              'Gỡ',
                              
                              style: TextStyle(
                               
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
          ],
        ));
  }
}
