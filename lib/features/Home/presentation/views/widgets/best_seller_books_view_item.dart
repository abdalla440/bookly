import 'package:flutter/material.dart';

import '../../../../../contants.dart';
import '../../../../../core/utils/helper/assets_helper.dart';
import '../../../../../core/utils/helper/styles_helper.dart';
import 'book_rating_widget.dart';

class BestSellerBooksViewItem extends StatelessWidget {
  const BestSellerBooksViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.7,
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
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style: BooklyStyles.textStyle20400.copyWith(
                    fontFamily: kFontGTSectraFineRegular,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'J.K. Rowling',
                  style: BooklyStyles.textStyle14400.copyWith(
                      fontWeight: FontWeight.w500, color: kGrayTextColor),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: BooklyStyles.textStyle20400
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    // const Spacer(),
                    const BooksRatingWidget()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
