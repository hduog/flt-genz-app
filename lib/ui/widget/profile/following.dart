import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/ui/view/profile/profileOther/profileOther.dart';

class FollowingScreen extends StatelessWidget {
  final ProfileData profileInfo;

  const FollowingScreen({super.key, required this.profileInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                // Logic tìm kiếm
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Đang theo dõi',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(Icons.sort, color: Colors.grey),
            ],
          ),
        ),
        Expanded(
          child: profileInfo.followings == null || profileInfo.followings!.isEmpty
              ? Center(
                  child: Text(
                    "Bạn chưa theo dõi ai",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: profileInfo.followings!.length,
                  itemBuilder: (context, index) {
                    final user = profileInfo.followings![index];
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
                            builder: (context) => ProfileOtherScreen(accountId: user.id), 
                          ),
                        );
                      },
                      trailing: ElevatedButton(
                        onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                        ),
                        child: const Text('Đang theo dõi'),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
