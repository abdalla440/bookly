import 'package:flutter/material.dart';

import 'books_list_view_item.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: ListView.separated(
          itemBuilder: (context, index) => const BooksListViewItem(),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
        ),
      ),
    );
  }
}
