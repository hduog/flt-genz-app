import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/view/menu/setting.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              // Điều hướng đến trang MySettingsPage khi nhấn vào nút Cài đặt ở góc trên
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
            // Phần Hồ Sơ
            _buildProfileSection(),

            // Menu dạng lưới
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Tất cả các phím tắt',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            _buildGridMenu(),

            Divider(thickness: 1),

            // Các phần mở rộng
            _buildListTile(Icons.settings, 'Cài đặt & quyền riêng tư', context),
            _buildListTile(Icons.help_outline, 'Trợ giúp & hỗ trợ', context),

            // Nút đăng xuất
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
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

  // Phần hiển thị hồ sơ người dùng
  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/quote.png'), // Thêm ảnh hồ sơ của bạn
            radius: 30,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nguyễn Lê Hữu Duy',
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

  // Phần menu dạng lưới
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

  // Phần hiển thị mỗi mục trong menu lưới
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

  // Phần ListTile cho các mục dưới cùng
  Widget _buildListTile(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        if (title == 'Cài đặt & quyền riêng tư')  {
          // Điều hướng đến trang MySettingsPage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySettingsPage()),
          );
        }
      },
    );
  }
}
