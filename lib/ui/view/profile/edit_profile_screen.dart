import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widget/profile/edit_profile.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
          'Chỉnh sửa thông tin',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: EditProfileWidget(),
    );
  }
}
