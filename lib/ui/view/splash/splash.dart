import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/ui/view/blogs/blogs.dart';
import 'package:flutter_application_1/ui/view/home/home.dart';
import 'package:flutter_application_1/ui/view/sendSorrow/sendSorrow.dart';
import 'package:flutter_application_1/ui/view/notifications/notifications.dart';
import 'package:flutter_application_1/ui/view/menu/menu.dart';
import 'package:flutter_application_1/ui/widget/bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  final Map<int, Widget> routes = {
    0: Home(),
    1: Blogs(),
    2: SendSorrow(),
    3: NotificationsPage(),
    4: MenuPage()
  };
  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => SafeArea(
              child: Scaffold(
                bottomNavigationBar: BottomBar(routes: routes),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50),
              const SizedBox(
                width: 280,
                child: Image(
                  image: AssetImage('assets/images/bg-landing.png'),
                ),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
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
                      )
                    ],
                  )),
              const SizedBox(height: 10),
              const Text(
                'Đang khởi tạo, vui lòng đợi...',
                style: TextStyle(color: colorIconActive, fontSize: 14),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: 20,
                height: 20,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    strokeWidth: 2.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
