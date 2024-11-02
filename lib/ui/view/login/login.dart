import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widget/auth/LoginComponent.dart';
import 'package:flutter_application_1/ui/widget/auth/RegisterComponent.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _switchToLoginTab() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _tabController.animateTo(0);
  }

  void _switchToRegisterTab() {
    _pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    _tabController.animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        child: DefaultTabController(
          length: 2,
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
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      labelStyle: const TextStyle(fontSize: 18),
                      tabs: const [
                        Tab(text: "Đăng nhập"),
                        Tab(text: "Đăng ký"),
                      ],
                      onTap: (index) {
                        _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 700,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (index) {
                          _tabController.animateTo(index);
                        },
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: LoginComponent(
                                onRegisterSuccess: _switchToRegisterTab),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RegisterComponent(
                                onRegisterSuccess: _switchToLoginTab),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
