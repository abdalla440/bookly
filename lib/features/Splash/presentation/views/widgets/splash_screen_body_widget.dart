import 'package:bookly/core/utils/helper/assets_helper.dart';
import 'package:flutter/material.dart';

class SplashScreenBodyWidget  extends StatelessWidget {
  const SplashScreenBodyWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(BooklyAssets.logoImagePath)
      ],
    );
  }
}
