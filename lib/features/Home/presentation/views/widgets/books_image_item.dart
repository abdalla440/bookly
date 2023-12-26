import 'package:flutter/material.dart';

import '../../../../../core/utils/helper/assets_helper.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              BooklyAssets.testPlaceholderImage,
            ),
          ),
        ),
      ),
    );
  }
}
