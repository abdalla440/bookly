import 'package:flutter/material.dart';

import '../../../../../core/utils/helper/assets_helper.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: AspectRatio(
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
      ),
    );
  }
}
