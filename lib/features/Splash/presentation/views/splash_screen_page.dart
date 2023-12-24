import 'package:bookly/features/Splash/presentation/views/widgets/splash_screen_body_widget.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenBodyWidget(),
    );
  }
}
