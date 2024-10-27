import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widget/auth/LoginComponent.dart';
import 'package:flutter_application_1/ui/widget/auth/RegisterComponent.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true;

  void toggleView() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView( // Sử dụng SingleChildScrollView để cuộn nội dung
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                // Logo and App Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/logo-string.svg',
                      width: 250,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Tab for Login and Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = true; // Hiển thị màn hình đăng nhập
                        });
                      },
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(
                          color: isLogin ? Colors.black : Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    VerticalDivider(width: 20, color: Colors.black),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = false; // Hiển thị màn hình đăng ký
                        });
                      },
                      child: Text(
                        "Đăng ký",
                        style: TextStyle(
                          color: !isLogin ? Colors.black : Colors.black54,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Hiển thị màn hình tương ứng
                if (isLogin)
                  LoginComponent() // Hiển thị màn hình đăng nhập
                else
                  RegisterComponent(), // Hiển thị màn hình đăng ký
              ],
            ),
          ),
        ),
      ),
    );
  }
}
