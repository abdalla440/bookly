
import 'package:bookly/core/utils/helper/styles_helper.dart';
import 'package:flutter/material.dart';
import 'best_seller_books_view_item.dart';
import 'custom_navigation_bar.dart';
import 'featured_books_list_view.dart';

class HomeScreenBodyWidget extends StatelessWidget {
  const HomeScreenBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomNavigationBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 35.0,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Best Seller',
            style: BooklyStyles.textStyle18600,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerBooksViewItem(),
        ),
      ],
    );
  }
}
