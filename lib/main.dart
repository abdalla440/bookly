import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contants.dart';
import 'features/Splash/presentation/views/splash_screen_page.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
