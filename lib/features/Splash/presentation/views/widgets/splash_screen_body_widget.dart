import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/helper/app_router.dart';
import '../../../../../core/utils/helper/assets_helper.dart';
import 'fade_animated_text.dart';

class SplashScreenBodyWidget extends StatefulWidget {
  const SplashScreenBodyWidget({Key? key}) : super(key: key);

  @override
  State<SplashScreenBodyWidget> createState() => _SplashScreenBodyWidgetState();
}

class _SplashScreenBodyWidgetState extends State<SplashScreenBodyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    initStartFadingAnimation(); //start the animation
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).replace(AppRouter.kHomeScreenPage);
      },
    );
  }

  void initStartFadingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward(); //start the animation
  }

  @override
  void dispose() {
    animationController.dispose(); //release the resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(BooklyAssets.logoImage),
        const SizedBox(
          height: 4,
        ),
        FadeAnimatedText(fadeAnimation: fadeAnimation),
      ],
    );
  }
}
