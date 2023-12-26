import 'package:flutter/material.dart';
import '../../../../../contants.dart';
import '../../../../../core/utils/helper/styles_helper.dart';

class BooksRatingWidget extends StatelessWidget {
  const BooksRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
        const Text(
          '4.8',
          style: BooklyStyles.textStyle16500,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(2390)',
          style: BooklyStyles.textStyle14400.copyWith(
            color: kGrayTextColor,
          ),
        ),
      ],
    );
  }
}
