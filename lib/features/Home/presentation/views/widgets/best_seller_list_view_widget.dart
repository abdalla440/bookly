import 'package:flutter/material.dart';

import 'best_seller_books_view_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({Key? key, this.scroll}) : super(key: key);
  final ScrollPhysics? scroll;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics:scroll?? const NeverScrollableScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: BestSellerBooksViewItem(),
      ),
    );
  }
}
