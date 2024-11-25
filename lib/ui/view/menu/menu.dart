import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/service/auth/auth_service.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/ui/view/menu/setting.dart';
import 'package:flutter_application_1/core/data/models/UserModel/BasicInfoGet/BasicInfoGet.dart';


class MenuPage extends ConsumerStatefulWidget {
  ConsumerState<MenuPage> createState() => _MenuPageState(); }
class _MenuPageState extends ConsumerState<MenuPage> {
   @override
  void initState() {
    super.initState();
    fetchUser();
  }
    Future<void> fetchUser() async {
    final authService = AuthService();
    final user =   await authService.infoUser(ref);
    if (user != null) {
      ref.read(userProvider.notifier).setInfoByToken(user);
    }
  }
  @override
  
  Widget build(BuildContext context) {
    final userInfo = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySettingsPage()),
              );
            },
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileSection(userInfo),
            // Các phần khác trong menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Tất cả các phím tắt',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildGridMenu(),
            Divider(thickness: 1),
            _buildListTile(Icons.settings, 'Cài đặt & quyền riêng tư', context),
            _buildListTile(Icons.help_outline, 'Trợ giúp & hỗ trợ', context),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(userProvider.notifier).logout();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                  ),
                  child: Text('Đăng xuất'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Hiển thị thông tin hồ sơ người dùng
  Widget _buildProfileSection(BasicInfoGet? userInfo) {
    if (userInfo == null) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Chưa có thông tin người dùng.',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('${Constants.awsUrl}${userInfo.avata ?? ''}'),
            radius: 30,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userInfo.fullName ?? "", 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Xem hồ sơ',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Các phần trong menu dạng lưới
  Widget _buildGridMenu() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      padding: EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
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
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
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
