import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/helper/colors_helper.dart';
import '../../../../../core/utils/helper/styles_helper.dart';
import 'book_details_price_preview_widget.dart';
import 'book_rating_widget.dart';
import 'books_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.23,
          ),
          child: const BookImageItem(),
        ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          'The Jungle Book',
          style: BooklyStyles.textStyle30400GT,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          'Rudyard Kipling',
          style: BooklyStyles.textStyle18600.copyWith(
            color: BooklyColors.kGrayTextColor,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const BooksRatingWidget(),
        const SizedBox(
          height: 20.0,
        ),
        const BookDetailsPricePreviewWidget()
      ],
    );
  }
}
