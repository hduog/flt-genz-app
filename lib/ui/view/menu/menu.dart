import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/ProfileModel/ProfileData/ProfileData.dart';
import 'package:flutter_application_1/core/service/profile/profile_service.dart';
import 'package:flutter_application_1/ui/view/profile/profile.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_application_1/view-models/profile/profile.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/ui/view/menu/setting.dart';

class MenuPage extends ConsumerStatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends ConsumerState<MenuPage> {
  @override
  void initState() {
    super.initState();
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    final profileService = ProfileService();
    final profile = await profileService.getMyProfile(ref);
    ref.read(profileProvider.notifier).setMyProfile(profile);
  }

  @override
  Widget build(BuildContext context) {
    final profileInfo = ref.watch(profileProvider);
    return Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        children: [
          Container(
            color: colorBackground,
            padding:
                const EdgeInsets.only(top: 30, bottom: 0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MySettingsPage()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // chung nao search duoc thi code o day :D
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(thickness: 1),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileSection(profileInfo),
                    const Divider(thickness: 1),
                    const SizedBox(height: 10),
                    const Text(
                      'Tất cả các phím tắt',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    _buildGridMenu(),
                    const Divider(thickness: 1),
                    _buildListTile(
                        Icons.settings, 'Cài đặt & quyền riêng tư', context),
                    _buildListTile(
                        Icons.help_outline, 'Trợ giúp & hỗ trợ', context),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            ref.read(userProvider.notifier).logout();
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 12),
                          ),
                          child: const Text('Đăng xuất'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(ProfileData? profileInfo) {
    if (profileInfo == null) {
      return Center(
        child: Text(
          'Chưa có thông tin người dùng.',
          style: TextStyle(fontSize: 16, color: colorBackground),
        ),
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage:
              NetworkImage('${Constants.awsUrl}${profileInfo.user.avata}'),
          radius: 25,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              profileInfo.user.fullName,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // Xóa padding mặc định
                minimumSize: const Size(0, 0), // Giảm kích thước TextButton
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text(
                'Xem hồ sơ',
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGridMenu() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildMenuItem(Icons.link, 'Kết nối'),
        _buildMenuItem(Icons.calendar_today, 'Lịch trình'),
        _buildMenuItem(Icons.description, 'Tài liệu'),
        _buildMenuItem(Icons.star, 'Sự kiện nổi bật'),
        _buildMenuItem(Icons.event, 'Event'),
        _buildMenuItem(Icons.folder, 'Kho lưu trữ'),
        _buildMenuItem(Icons.people, 'Người theo dõi'),
        _buildMenuItem(Icons.extension, 'Tính năng'),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.blueAccent),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: colorIconActive),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: () {
        if (title == 'Cài đặt & quyền riêng tư') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySettingsPage()),
          );
        }
      },
    );
  }
}
