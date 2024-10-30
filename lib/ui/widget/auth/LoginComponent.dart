import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widget/main-layout.dart';
import 'package:flutter_svg/svg.dart';

class LoginComponent extends StatelessWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'E-mail',
            hintText: 'Nhập Email',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          decoration: InputDecoration(
            labelText: 'Mật khẩu',
            hintText: 'Nhập mật khẩu',
            hintStyle: const TextStyle(
              color: Colors.grey, // Màu cho hintText
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainLayout()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Center(
            child: Text(
              'Đăng nhập',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Quên mật khẩu?',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ),

        const SizedBox(height: 10),
        const Text(
          'hoặc đăng nhập với',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),

        // Google Sign-in Button
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.black12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(double.infinity, 50)),
          icon: SvgPicture.asset(
            'assets/icons/google.svg', // Replace with your Google logo asset
            height: 40,
          ),
          label: const Text(
            'Google',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 10),

        // Sign Up Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Không có tài khoản?'),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Đăng kí',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
