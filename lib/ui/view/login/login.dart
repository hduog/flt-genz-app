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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/logo-string.svg',
                      width: 250,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = true;
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
                    const VerticalDivider(width: 20, color: Colors.black),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isLogin = false;
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
                const SizedBox(height: 20),
                if (isLogin)
                  const LoginComponent()
                else
                  const RegisterComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
