import 'package:bookly/core/utils/helper/app_router.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../contants.dart';
import '../../../../../core/utils/helper/colors_helper.dart';
import '../../../../../core/utils/helper/styles_helper.dart';
import 'book_rating_widget.dart';

class BestSellerBooksViewItem extends StatelessWidget {
  const BestSellerBooksViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;
  final bookPrice = 'Free';
  final bookRating = 0.0;
  final bookRatingCount = 0.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsScreenPage,extra: bookModel),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              child: AspectRatio(
                aspectRatio: 0.7,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                  placeholder: (context, url) => const Icon(Icons.book),
                  errorWidget: (context, url, error) => const Icon(Icons.book),

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
                    bookModel.volumeInfo.title,
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
                    bookModel.volumeInfo.authors[0],
                    style: BooklyStyles.textStyle14400.copyWith(
                        fontWeight: FontWeight.w500,
                        color: BooklyColors.kGrayTextColor,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bookPrice.toString(),
                        style: BooklyStyles.textStyle20400
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      // const Spacer(),
                      BooksRatingWidget(
                        bookRating: bookRating,
                        bookRatingCount: bookRatingCount,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
