import 'package:flutter/material.dart';

class EditProfileWidget extends StatefulWidget {
  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  // Initialize controllers with existing data
  final TextEditingController lastNameController =
      TextEditingController(text: 'Nguyễn Lê');
  final TextEditingController firstNameController =
      TextEditingController(text: 'Hữu Duy');
  final TextEditingController nicknameController =
      TextEditingController(text: '@nguyenlehuuduyy');
  final TextEditingController phoneController =
      TextEditingController(text: '0123456789');
  final TextEditingController emailController =
      TextEditingController(text: 'nguyenlehuuduy@gmail.com');
  final TextEditingController birthdateController =
      TextEditingController(text: '09/09/2002');
  final TextEditingController bioController =
      TextEditingController(text: 'Bạn nghĩ gì về chữa lành? Với tôi...');

  // Interests can be edited or deleted
  List<String> interests = ['Game', 'Song', 'Reading'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          buildTextField('Họ', lastNameController),
          buildTextField('Tên', firstNameController),
          buildTextField('Nickname', nicknameController),
          buildTextField('Phone Number', phoneController),
          buildTextField('Email', emailController),
          buildTextField('Sinh nhật', birthdateController),
          SizedBox(height: 20),
          Text('Interests', style: TextStyle(
            fontSize: 16,
            color: Colors.black)),
          Wrap(
            spacing: 8,
            children: interests.map((interest) {
              return Chip(
                label: Text(interest),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onDeleted: () {
                  setState(() {
                    interests.remove(interest);
                  });
                },
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: _addInterest,
            child: Text('Add Interest'),
          ),
          SizedBox(height: 20),
          Text('Bio', style: TextStyle(fontSize: 16)),
          TextField(
            controller: bioController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Enter your bio',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }

  // add interest
  void _addInterest() async {
    final newInterest = await showDialog<String>(
      context: context,
      builder: (context) {
        String interest = '';
        return AlertDialog(
          title: Text('Add Interest'),
          content: TextField(
            onChanged: (value) => interest = value,
            decoration: InputDecoration(hintText: 'Enter new interest'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, interest),
              child: Text('Add'),
            ),
          ],
        );
      },
    );

    if (newInterest != null && newInterest.isNotEmpty) {
      setState(() {
        interests.add(newInterest);
      });
    }
  }
}
