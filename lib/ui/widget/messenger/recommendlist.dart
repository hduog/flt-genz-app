import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/FollowersData/FollowersData.dart';

class RecommendList extends StatelessWidget {
  final FollowersData follower;
  final VoidCallback onTap;

  const RecommendList({super.key, required this.onTap, required this.follower});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.network(
                '${Constants.awsUrl}${follower.avata ?? ''}',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              follower.fullName.split(' ').last,  
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600, 
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
