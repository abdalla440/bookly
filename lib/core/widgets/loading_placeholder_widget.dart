import 'package:flutter/material.dart';

class LoadingPlaceholderWidget extends StatelessWidget {
  const LoadingPlaceholderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}


