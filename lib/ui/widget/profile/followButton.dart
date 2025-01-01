import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/FollowModel/FollowForCreate/FollowForCreate.dart';
import 'package:flutter_application_1/core/data/models/FollowModel/CheckRequestFollow/CheckRequestFollow.dart';
import 'package:flutter_application_1/core/service/follow/follow_service.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FollowButton extends ConsumerStatefulWidget {
  final String senderId;
  final String reciverId;
final VoidCallback onReloadPage;
  const FollowButton( {
    super.key,
    required this.senderId,
    required this.reciverId,
    required this.onReloadPage,
  });
  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends ConsumerState<FollowButton> {
  final FollowService followService = FollowService();
  final ProfileService profileService = ProfileService();
  bool isLoading = true;
  String followStatus = "Theo dõi";
  String followShipIdOfFollowing = "";
  String followShipId = "";
  CheckRequestFollow? checkRequestFollow;
  @override
  void initState() {
    super.initState();
    _checkFollowStatus(widget.reciverId);
  }

  Future<void> _checkFollowStatus(String reciverId) async {
    if (reciverId.isEmpty) {
      return;
    }
    setState(() => isLoading = true);
    try {
      final profile = await profileService.getProfileOtherAccount(reciverId);
      if (profile != null) {
        final followShipStatus = profile.is_follow.status;
        followShipIdOfFollowing =
            profile.is_follow.followShipIdOfFollowing ?? "";
        followShipId = profile.is_follow.followShipId ?? "";
        if (followShipStatus == 0 ||
            followShipStatus == 1 ||
            followShipStatus == 2 ||
            followShipStatus == 3) {
          checkRequestFollow =
              await followService.checkStatusFollows(reciverId);
        }
        setState(() {
          if (followShipStatus == 0 || followShipStatus == 1) {
            followStatus =
                checkRequestFollow?.status == 1 ? "Đã gửi yêu cầu" : "Theo dõi";
          } else if (followShipStatus == 2) {
            followStatus = "Đã theo dõi";
          } else if (followShipStatus == 3) {
            followStatus = "Bạn bè";
          }
          isLoading = false;
        });
      } else {
        setState(() {
          followStatus = "Theo dõi";
          isLoading = false;
        });
      }
    } catch (e) {
      setState(() => isLoading = false);
    }
  }

  void handleUnfollow() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xác nhận"),
          content: const Text("Bạn có muốn hủy theo dõi người này không?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Không"),
            ),
            TextButton(
              onPressed: () async {
                bool isSuccessUnfollow = false;
                bool isSuccessUnRequestFollow = false;

                if (followShipId.isNotEmpty) {
                  isSuccessUnfollow =
                      await followService.unFollows(followShipId);
                }
                if (followShipIdOfFollowing.isNotEmpty) {
                  isSuccessUnfollow =
                      await followService.unFollows(followShipIdOfFollowing);
                }
                final requestId = checkRequestFollow?.id;
                if (requestId != null && requestId.isNotEmpty) {
                  isSuccessUnRequestFollow =
                      await followService.unRequestFollows(requestId);
                } else {}
                if (isSuccessUnfollow || isSuccessUnRequestFollow) {
                  await _checkFollowStatus(widget.reciverId);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Hủy theo dõi thành công.')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Hủy theo dõi thất bại.')),
                  );
                }
                Navigator.pop(context);  
                widget.onReloadPage();
              },
              child: const Text("Có"),
            ),
          ],
        );
      },
    );
  }

  Future<void> handleFollow() async {
  if (followStatus == "Theo dõi") {
    final followData = FollowForCreate(
      senderId: widget.senderId,
      reciverId: widget.reciverId,
    );
    print('Follow data: ${followData.toJson()}'); // Log the follow data
    final followResponse = await followService.sendRequestFollows(followData);
    if (followResponse) {
      await _checkFollowStatus(widget.reciverId);
      widget.onReloadPage(); // Reload the entire page after following
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Yêu cầu theo dõi thất bại.')),
      );
    }
  }
}


  void handleUnRequestFollow() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Xác nhận"),
          content: const Text("Bạn có muốn hủy yêu cầu theo dõi không?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Không"),
            ),
            TextButton(
              onPressed: () async {
                final isSuccess = await followService
                    .unRequestFollows(checkRequestFollow?.id ?? '');
                if (isSuccess) {
                  await _checkFollowStatus(widget.reciverId);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Hủy yêu cầu theo dõi thành công.')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Hủy yêu cầu theo dõi thất bại.')),
                  );
                }
                Navigator.pop(context);
              },
              child: const Text("Có"),
            ),
          ],
        );
      },
    );
  }

  void handleUnfollowAction() {
    if (followStatus == "Đã gửi yêu cầu") {
      handleUnRequestFollow();
    } else if (followStatus == "Bạn bè" || followStatus == "Đã theo dõi") {
      handleUnfollow();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const CircularProgressIndicator();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: handleFollow,
              child: Text(
                followStatus,
                style: const TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: followStatus == "Đã gửi yêu cầu" ||
                        followStatus == "Bạn bè" ||
                        followStatus == "Đã theo dõi"
                    ? Colors.grey
                    : Colors.blue,
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(width: 5),
            if (followStatus == "Đã gửi yêu cầu" ||
                followStatus == "Bạn bè" ||
                followStatus == "Đã theo dõi")
              PopupMenuButton<String>(
                onSelected: (String value) {
                  if (value == "Hủy Theo Dõi") {
                    handleUnfollowAction();
                  }
                },
                offset: const Offset(110, 0),
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: "Hạn Chế",
                      child: Text("Hạn Chế"),
                    ),
                    const PopupMenuItem(
                      value: "Hủy Theo Dõi",
                      child: Text("Hủy Theo Dõi"),
                    ),
                  ];
                },
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
