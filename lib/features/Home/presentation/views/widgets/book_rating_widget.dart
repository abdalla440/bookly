import 'package:flutter/material.dart';
import '../../../../../core/utils/helper/colors_helper.dart';
import '../../../../../core/utils/helper/styles_helper.dart';

class BooksRatingWidget extends StatelessWidget {
  const BooksRatingWidget({
    super.key,
    required this.bookRating,
    required this.bookRatingCount,
  });

  final double bookRating;
  final double bookRatingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
        Text(
          bookRating.toString(),
          style: BooklyStyles.textStyle16500,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '(${bookRatingCount.toString()})',
          style: BooklyStyles.textStyle14400.copyWith(
            color: BooklyColors.kGrayTextColor,
          ),
        ),
      ],
    );
  }
}
