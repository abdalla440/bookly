
import 'package:flutter/material.dart';

class FadeAnimatedText extends StatelessWidget {
  const FadeAnimatedText({
    super.key,
    required this.fadeAnimation,
  });

  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: fadeAnimation,
        builder: (context,_) {
          return FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gugi',
                fontSize: 18,
              ),
            ),
          );
        }
    );
  }
}
