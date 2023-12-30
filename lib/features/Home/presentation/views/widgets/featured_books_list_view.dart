import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/error_placeholder_widget.dart';
import '../../../../../core/widgets/loading_placeholder_widget.dart';
import '../../controller/featured_cubit/featured_books_cubit.dart';
import 'books_image_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 24),      child: CarouselSlider(
  //       options: CarouselOptions(
  //         height: MediaQuery.sizeOf(context).height * 0.3,
  //         viewportFraction: 0.4,
  //         initialPage: 1,
  //         autoPlayCurve: Curves.easeOutCirc,
  //         enlargeCenterPage: true,
  //         enlargeFactor: 0.15,
  //         enableInfiniteScroll: false,
  //         // disableCenter: true
  //       ),
  //       items: [1, 2, 3, 4, 5,6,7,8,9,10,11].map((i) {
  //         return Builder(
  //           builder: (BuildContext context) {
  //             return const BooksListViewItem();
  //           },
  //         );
  //       }).toList(),
  //     ),
  //   );
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        // case of success
        if (state is FeaturedBooksSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>  BookImageItem(imagePath: state.booksList[index].volumeInfo.imageLinks.thumbnail),
                scrollDirection: Axis.horizontal,
                itemCount: state.booksList.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 16,
                ),
              ),
            ),
          );
        }
        // case of fail
        else if (state is FeaturedBooksFailState) {
          return ErrorPlaceholderWidget(state.errorMessage);
        }
        // case of loading (default)
        else {
          return const LoadingPlaceholderWidget();
        }
      },
    );
  }
}

