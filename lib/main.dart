import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/post/create_post.dart';
import 'package:flutter_application_1/ui/view/home/home.dart';
import 'package:flutter_application_1/ui/view/profile/profile.dart';
import 'package:flutter_application_1/ui/view/splash/splash.dart';
import 'package:flutter_application_1/ui/widget/profile/infor_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'genz mental heath',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const Splash(),
    );
  }
}
