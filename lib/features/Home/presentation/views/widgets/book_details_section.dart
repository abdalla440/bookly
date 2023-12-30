import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/helper/colors_helper.dart';
import '../../../../../core/utils/helper/styles_helper.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_details_price_preview_widget.dart';
import 'books_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.23,
          ),
          child: BookImageItem(
              imagePath:
              bookModel.volumeInfo.imageLinks.thumbnail),
        ),
        const SizedBox(
          height: 30.0,
        ),
         Text(
          bookModel.volumeInfo.title,
          style: BooklyStyles.textStyle30400GT,textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          bookModel.volumeInfo.authors[0],
          style: BooklyStyles.textStyle18600.copyWith(
            color: BooklyColors.kGrayTextColor,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        // const BooksRatingWidget(),
        const SizedBox(
          height: 20.0,
        ),
        const BookDetailsPricePreviewWidget()
      ],
    );
  }
}
