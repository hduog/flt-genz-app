import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/view/sendSorrow/sendSorrow.dart';
import 'package:flutter_application_1/ui/view/soundChill/soundChill.dart';
import 'package:flutter_application_1/ui/view/splash/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'genz mental heath',
        routes: <String, WidgetBuilder>{
          '/send_sorrow': (BuildContext context) => new SendSorrow(),
          '/sound-chill': (BuildContext context) => new SoundChillScreen(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Splash(),
      ),
    );
  }
}
