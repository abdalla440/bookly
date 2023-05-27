import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: KPrimaryColor),
      home: SplashView(),
    );
  }
}
