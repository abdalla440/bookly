import 'package:flutter/material.dart';

import 'best_seller_books_view_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
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
