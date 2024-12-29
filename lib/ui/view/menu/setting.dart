import 'package:flutter/material.dart';

class MySettingsPage extends StatelessWidget {
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
        title: Center(
          child: Text('Cài đặt'),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Tài khoản'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Thông báo'),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('Tài liệu'),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Thanh toán'),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Quyền riêng tư'),
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Kho lưu trữ'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cài đặt nâng cao'),
          ),
        ],
      ),
      
    );
  }
}