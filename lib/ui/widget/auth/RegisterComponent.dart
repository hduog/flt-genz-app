import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterComponent extends StatelessWidget {
  const RegisterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Họ và tên',
            hintText: 'Nhập họ và tên của bạn',
            hintStyle: TextStyle(
              color: Colors.grey, // Màu cho hintText
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            labelText: 'E-mail',
            hintText: 'Nhập Email',
            hintStyle: TextStyle(
              color: Colors.grey, // Màu cho hintText
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            hintText: 'Nhập mật khẩu của bạn',
            hintStyle: TextStyle(
              color: Colors.grey, // Màu cho hintText
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            hintText: 'Nhập lại mật khẩu của bạn',
            hintStyle: TextStyle(
              color: Colors.grey, // Màu cho hintText
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            // Xử lý logic đăng ký
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              'Đăng ký',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: Text(
            'Quên mật khẩu?',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'hoặc đăng nhập với',
          style: TextStyle(color: Colors.black54),
        ),

        SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.black12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(double.infinity, 50)),
          icon: SvgPicture.asset(
            'assets/icons/google.svg', // Replace with your Google logo asset
            height: 40,
          ),
          label: Text(
            'Google',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 10), // Sign Up Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Đã có tài khoản?'),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
