import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideAnimation =
    // Tween Animation is to determine the start and end of the animation
        Tween<Offset>(begin: const Offset(0, 0.4), end: Offset.zero)
            .animate(animationController);
    animationController.forward(); //to start the animation
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AnimatedBuilder is used to prevent animation from affecting any widget but the one is animated
          AnimatedBuilder(
            animation: slideAnimation,
            builder: (BuildContext context, _) {
              // SlideTransition is used to apply the animation to the widget
              return SlideTransition(
                position: slideAnimation,
                child: Image.asset(
                  AssetsData.logo,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
