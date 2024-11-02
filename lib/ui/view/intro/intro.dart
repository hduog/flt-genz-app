import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/service/auth/auth_service.dart';
import 'package:flutter_application_1/ui/view/login/login.dart';
import 'package:flutter_application_1/ui/widget/intro/info_intro.dart';
import 'package:flutter_application_1/ui/widget/main-layout.dart';
import 'package:flutter_application_1/view-models/auth/user.prvd.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends ConsumerStatefulWidget {
  const IntroScreen({super.key});

  @override
  ConsumerState<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends ConsumerState<IntroScreen> {
  final controller = InfoItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    checkIfFirstTime();
  }

  Future<void> checkIfFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? onboardingSeen = prefs.getBool('onboarding');
    if (onboardingSeen == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    Future<void> getInfoUserProvider() async {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('access_token');
      if (token!.isNotEmpty) {
        final data = await authService.getBasicInfo(token);
        if (data != null) {
          ref.read(userProvider.notifier).setInfoByToken(data);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainLayout()));
        }
      }
    }

    getInfoUserProvider();

    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage
            ? getStarted()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip Button
                  TextButton(
                      onPressed: () => pageController
                          .jumpToPage(controller.items.length - 1),
                      child: const Text("Bỏ qua")),

                  // Indicator
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    effect: const WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      activeDotColor: Colors.blueAccent,
                    ),
                  ),

                  TextButton(
                      onPressed: () => pageController.nextPage(
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn),
                      child: const Text("Tiếp tục")),
                ],
              ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
            onPageChanged: (index) => setState(
                () => isLastPage = controller.items.length - 1 == index),
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    controller.items[index].image,
                    height: 300.0,
                  ),
                  const SizedBox(height: 15),
                  Text(controller.items[index].title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  const SizedBox(height: 15),
                  Text(controller.items[index].descriptions,
                      style: const TextStyle(color: Colors.grey, fontSize: 17),
                      textAlign: TextAlign.center),
                ],
              );
            }),
      ),
    );
  }

  // Get started button
  Widget getStarted() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      child: TextButton(
        onPressed: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool("onboarding", true);

          if (!mounted) return;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Text(
          "Bắt đầu",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
